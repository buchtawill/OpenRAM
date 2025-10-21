#!/home/jwbuchta/OpenRAM/miniconda/bin/python

import os
import subprocess

# https://spicelib.readthedocs.io/en/latest/modules/read_rawfiles.html
from spicelib import RawRead
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import pickle
import time
import numpy as np

DUT_NAME = 'example_config_freepdk45'
# DUT_NAME = 'freepdk45_1rw_32x64_8'
STOP_TIME = '100n'

SIGNALS = [
    f'dout0_0',
    f'X{DUT_NAME}.Xbank0.bl_0_0',
    f'X{DUT_NAME}.s_en0',
    f'CSB0',
    f'WEB0',
    f'X{DUT_NAME}.w_en0',
    f'X{DUT_NAME}.wl_en0',
    f'X{DUT_NAME}.p_en_bar0',
    f'X{DUT_NAME}.rbl_bl0',
    f'clk0',
]

# SIGNALS = [
    # f'clk0',
    # f'csb0',
    # f'web0',
    # f'X{DUT_NAME}.rbl_bl0',
    # f'X{DUT_NAME}.Xcontrol0.rbl_bl_delay',
    # f'X{DUT_NAME}.Xcontrol0.rbl_bl_delay_bar',
    # f'X{DUT_NAME}.p_en_bar0',
    # f'X{DUT_NAME}.s_en0',
    # f'X{DUT_NAME}.w_en0',
# ]
SIGNALS.reverse()

dirpath = f'{os.path.abspath(os.path.dirname(__file__))}/{DUT_NAME}'
stim_path = f'{dirpath}/functional_stim.sp'
mod_spice_path = f'{dirpath}/functional_stim_modified.sp'
rawfile_path = f'{dirpath}/sim_results.rawspice'
rawfile_pkl_path = f'{dirpath}/sim_results.pkl'
pkl_spectre_traces = f'{dirpath}/saved_traces.pkl'
spectre_dump_path = f'{dirpath}/results/home/jwbuchta/OpenRAM/macros/example_config_freepdk45/functional_stim_modified.sp/tran.tran.tran'

def modify_spice_file(lang='ngspice'):
    # Overwrite the stimulus, plotting signals as necessary
    
    with open(stim_path) as f:
        default_content = f.read()
    
        with open(mod_spice_path, 'w') as f:
            f.write(default_content)
            if(lang == 'ngspice'):
                f.write(f".tran 100p {STOP_TIME} \n")
                f.write('.control\n')
                f.write('run\n')
                f.write('plot \n')
                for i in range(len(SIGNALS)):
                    sig = SIGNALS[i]
                    f.write(f' + V({sig}) + {i*2}\n')
                f.write('.endc\n')
                f.write('.end\n')
                
            elif(lang == 'spectre'):    
                f.write("simulator lang=spectre\n")
                f.write("saveOptions options save=selected nestlvl=10 pwr=total\n")
                f.write('\n* Selected signals to save \n')
                for signal in SIGNALS:
                    f.write(f'save {signal}\n')
                f.write('\n')
                f.write("simulatorOptions options reltol=1e-3 vabstol=1e-6 iabstol=1e-12 temp=25 try_fast_op=no rforce=10m maxnotes=10 maxwarns=10 preservenode=all topcheck=fixall digits=5 cols=80 dc_pivot_check=yes pivrel=1e-3\n")
                f.write("tran tran step=5p stop=500n ic=node write=spectre.dc errpreset=moderate annotate=status maxiters=5\n")
                f.write("simulator lang=spice\n")
            

def run_spice(file_path:str, lang='ngspice'):
    # Run ngspice with X11 GUI
    if(lang == 'ngspice'):
        env = os.environ.copy()
        env["DISPLAY"] = os.getenv("DISPLAY", ":0")  # Ensure X display is passed through
        result = subprocess.run(["ngspice", file_path], env=env)
        os.system(f"mv sim_results.rawspice {dirpath}")
    
    elif(lang == 'spectre'):
        env = os.environ.copy()
        result = subprocess.run([f'cd {DUT_NAME}; spectre +mt=16 -r ./results/%C -f psfascii {file_path}'],
                                shell=True, env=env, stdout=None, stderr=None)
    else:
        print(f"ERROR [run_spice] unknown lang {lang}")
        exit()
    if(result.returncode != 0):
        print(f"ERROR: Simulator failed to run")
        exit()
        
def parse_sim_output(dump_path, SIGNALS):
    """
    Parses a Spectre ASCII output file and returns a dict:
      { signal_name: np.ndarray of values }
    Includes 'time' as one of the traces.
    Only saves traces listed in SIGNALS (plus 'time').
    """
    traces = {s: [] for s in SIGNALS}
    traces["time"] = []  # always include time

    current_values = None
    recording_values = False

    with open(dump_path, 'r') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            # Detect start of VALUE section
            if line == "VALUE":
                recording_values = True
                continue

            if not recording_values:
                continue

            # Start of a new timestep
            if line.startswith('"time"'):
                # Save the previous timestep
                if current_values:
                    for key, val in current_values.items():
                        if key in traces:
                            traces[key].append(val)

                # Begin new timepoint
                current_values = {}
                parts = line.split(maxsplit=1)
                if len(parts) == 2:
                    try:
                        current_values["time"] = float(parts[1])
                    except ValueError:
                        current_values["time"] = np.nan
                continue

            # Parse "name" value
            if line.startswith('"') and current_values is not None:
                parts = line.split(maxsplit=1)
                if len(parts) == 2:
                    name = parts[0].strip('"')
                    try:
                        val = float(parts[1])
                        current_values[name] = val
                    except ValueError:
                        pass  # skip malformed lines

        # Store last timestep
        if current_values:
            for key, val in current_values.items():
                if key in traces:
                    traces[key].append(val)

    # Convert all lists to numpy arrays
    traces = {k: np.array(v) for k, v in traces.items() if len(v) > 0}
    return traces


def plot_signals(trace_data_dict:dict, plot_start:float, plot_end:float, minor_ticks:float=2.5):
    # 5440 traces for example_config_freepdk45
    # tstart = time.perf_counter()
    
    # if (os.path.exists(rawfile_pkl_path)): 
    #     with open(rawfile_pkl_path, 'rb') as f:
    #         rawfile = pickle.load(f)
    # else:
    #      rawfile = RawRead(rawfile_path)
    #      with open(rawfile_pkl_path, 'wb') as f:
    #          pickle.dump(rawfile, f, protocol=pickle.HIGHEST_PROTOCOL)    
    
    # tend = time.perf_counter()
    # print(f'Time to load raw traces: {(tend - tstart):.2f}')
    
    # sim_time_ns = rawfile.get_trace('time').data * 1e9
    
    sim_time_ns = trace_data_dict['time'] * 1e9
    print(f'Num datapoints: {len(sim_time_ns)}')
    print(f'End of sim: {round(sim_time_ns[-1])} ns')

    t_pre_plot = time.perf_counter()
 
    for i in range(len(SIGNALS)):
        sig = SIGNALS[i]
        try:
            
            # trace = rawfile.get_trace(sig)
            # trace_data = trace.data + i * 2 # To separate vertically
            trace_data = trace_data_dict[sig] + i*2
            
            # Don't print hierarchy
            sig_name = sig.split('.')[-1]
            plt.plot(sim_time_ns, trace_data, label=sig_name)
            
            # Choose where to place the label (start or end of trace)
            y_pos = trace_data[0]

            # Add text label slightly offset to avoid overlap
            plt.text(
                plot_start + (0.025 * (plot_end-plot_start)),  # small horizontal offset
                y_pos + 0.5,
                sig_name,
                fontsize=10,
                color='black',
                va='center'
            )
            
        except Exception as e:
            print(f"WARNING: Could not find trace '{sig}'")
    
    # Enable both major and minor gridlines
    plt.grid(True, which='major', linewidth=0.8)
    plt.grid(True, which='minor', linestyle='--', linewidth=0.5)
    plt.minorticks_on()  # enable automatic minor ticks

    plt.xlabel('Time (ns)')
    plt.ylabel('Voltage (V)')
    plt.title('FreePDK45 - Proper Delay Chain')
    
    # Set major and minor ticks
    ax = plt.gca()
    ax.xaxis.set_major_locator(ticker.MultipleLocator(5))
    ax.xaxis.set_minor_locator(ticker.MultipleLocator(minor_ticks))

    # Set major ticks for y-axis every 1 unit
    ax.yaxis.set_major_locator(ticker.MultipleLocator(1))
    ax.yaxis.set_minor_locator(ticker.NullLocator())  # disable y minor ticks

    # Enable grid for both axes
    ax.grid(True, which='major', axis='both', linestyle='-', linewidth=0.7)
    ax.grid(True, which='minor', axis='x', linestyle=':', linewidth=0.4, alpha=0.7)

    plt.tight_layout()
    plt.xlim(plot_start, plot_end)
    plt.savefig('traces.png')
    
    t_post_plot = time.perf_counter()

    print(f'Time to plot: {(t_post_plot - t_pre_plot):.2f}')
    plt.show()

if __name__ == '__main__':
    # run_spice(stim_path)
    # plot_signals(45, 75)

    # Spectre flow
    # 1. Check if there's a pickle file with all the signals we want
    # 2. If not:
    # 2a. Modify spice file
    # 2b. Run spice
    # 2c. Parse spice into dict of ndarrays [name: array] and save pickle
    need_rerun = False
    if(os.path.exists(pkl_spectre_traces)):
        with open(pkl_spectre_traces, 'rb') as f:
            trace_data = pickle.load(f)
            
        for signal in SIGNALS:
            if(signal not in trace_data.keys()):
                need_rerun = True
                break
    else:
        need_rerun = True
        
    if(need_rerun):
        modify_spice_file(lang='spectre')
        run_spice(mod_spice_path, 'spectre')
        trace_data = parse_sim_output(dump_path=spectre_dump_path, SIGNALS=SIGNALS) 
        
        with open(pkl_spectre_traces, 'wb') as f:
            pickle.dump(trace_data, f, protocol=pickle.HIGHEST_PROTOCOL)  
            
    plot_signals(trace_data, 5, 105)
    #print(trace_data.keys())

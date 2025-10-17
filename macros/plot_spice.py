#!/home/jwbuchta/OpenRAM/miniconda/bin/python

import os
import subprocess

# https://spicelib.readthedocs.io/en/latest/modules/read_rawfiles.html
from spicelib import RawRead
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

import time

# DUT_NAME = 'example_config_freepdk45'
DUT_NAME = 'freepdk45_1rw_32x64_8'
STOP_TIME = '100n'

# Name of signals and order to plot them
SIGNALS = [
    f'dout0_0',
    f'x{DUT_NAME}.xbank0.bl_0_0',
    f'x{DUT_NAME}.s_en0',
    f'web0',
    f'x{DUT_NAME}.w_en0',
    f'x{DUT_NAME}.wl_en0',
    f'x{DUT_NAME}.p_en_bar0',
    f'clk0',
]

dirpath = f'{os.path.abspath(os.path.dirname(__file__))}/{DUT_NAME}'
stim_path = f'{dirpath}/functional_stim.sp'
tmp_path = f'{dirpath}/functional_stim_tmp.sp'
rawfile_path = f'{dirpath}/sim_results.rawspice'
rawfile_pkl_path = f'{dirpath}/sim_results.pkl'

def modify_spice_file():
    # Overwrite the stimulus, plotting signals as necessary
    
    with open(stim_path) as f:
        default_content = f.read()
    
    with open(tmp_path, 'w') as f:
        f.write(default_content)
        f.write(f".tran 100p {STOP_TIME} \n")
        f.write('.control\n')
        f.write('run\n')
        f.write('plot \n')
        for i in range(len(SIGNALS)):
            sig = SIGNALS[i]
            f.write(f' + V({sig}) + {i*2}\n')
        f.write('.endc\n')
        f.write('.end\n')


def run_spice(file_path:str):
    # Run ngspice with X11 GUI
    env = os.environ.copy()
    env["DISPLAY"] = os.getenv("DISPLAY", ":0")  # Ensure X display is passed through
    subprocess.run(["ngspice", file_path], env=env)

def plot_signals(plot_start:float, plot_stop:float):
    '''
    Open the raw binary file
    '''
    # 5440 traces for example_config_freepdk45
    tstart = time.perf_counter()
    
    import pickle
    
    # rawfile = RawRead(rawfile_path)
    # with open(rawfile_pkl_path, 'wb') as f:
    #     pickle.dump(rawfile, f, protocol=pickle.HIGHEST_PROTOCOL)    
    with open(rawfile_pkl_path, 'rb') as f:
        rawfile = pickle.load(f)
    
    tend = time.perf_counter()
    print(f'{(tend - tstart):.2f}')
    sim_time = rawfile.get_trace('time').data * 1e9
    print(f'Num datapoints: {len(sim_time)}')
    
    for i in range(len(SIGNALS)):
        sig = SIGNALS[i]
        try:
            trace = rawfile.get_trace(sig)
            
            # separate traces vertically
            trace_data = trace.data + i * 2
            
            # Don't print hierarchy
            sig_name = sig.split('.')[-1]
            plt.plot(sim_time, trace_data, label=sig_name)
            
            # Choose where to place the label (start or end of trace)
            x_pos = sim_time[0]
            y_pos = trace_data[0]

            # Add text label slightly offset to avoid overlap
            plt.text(
                plot_start + (0.025 * (plot_stop-plot_start)),  # small horizontal offset
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
    plt.title('Traces vs Time')
    
    # Set major and minor ticks
    ax = plt.gca()
    ax.xaxis.set_major_locator(ticker.MultipleLocator(5))
    ax.xaxis.set_minor_locator(ticker.MultipleLocator(2.5))
    # ax.yaxis.set_minor_locator(ticker.AutoMinorLocator())

    # Enable grid for both major and minor ticks
    ax.grid(True, which='major', linestyle='-', linewidth=0.7)
    ax.grid(True, which='minor', linestyle=':', linewidth=0.4, alpha=0.7)

    plt.tight_layout()
    plt.xlim(plot_start, plot_stop)
    plt.savefig('test.png')
    plt.show()

if __name__ == '__main__':
    # plot_signals(115, 135)
    plot_signals(5, 105)
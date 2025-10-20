* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/jwbuchta/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/jwbuchta/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "/home/jwbuchta/OpenRAM/macros/example_config_freepdk45/tmp/sram.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xexample_config_freepdk45 din0_0 din0_1 a0_0 a0_1 a0_2 a0_3 CSB0 WEB0 clk0 dout0_0 dout0_1 vdd gnd example_config_freepdk45

* SRAM output loads
CD00 dout0_0  0 0.8364f
CD01 dout0_1  0 0.8364f


* Important signals for debug
* bl:	xsram:xbank0:bl_0_0
* br:	xsram:xbank0:br_0_0
* s_en:	xsram:s_en
* q:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q
* qbar:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 10  to  address 0000 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 10 from address 0000 (from port 0) during cycle 4 (20ns - 25ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 6 (30ns - 35ns)
*	Reading 01 from address 0000 (from port 0) during cycle 8 (40ns - 45ns)
*	Reading 10 from address 1110 (from port 0) during cycle 9 (45ns - 50ns)
*	Writing 10  to  address 0000 (from port 0) during cycle 10 (50ns - 55ns)
*	Reading 10 from address 0000 (from port 0) during cycle 12 (60ns - 65ns)
*	Reading 10 from address 0000 (from port 0) during cycle 13 (65ns - 70ns)
*	Reading 10 from address 0000 (from port 0) during cycle 14 (70ns - 75ns)
*	Reading 10 from address 1110 (from port 0) during cycle 15 (75ns - 80ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 16 (80ns - 85ns)
*	Reading 01 from address 0000 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 10 from address 1110 (from port 0) during cycle 20 (100ns - 105ns)
*	Reading 10 from address 1110 (from port 0) during cycle 22 (110ns - 115ns)
*	Reading 01 from address 0000 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 10 from address 1110 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 01 from address 0000 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 01 from address 0000 (from port 0) during cycle 26 (130ns - 135ns)
*	Reading 10 from address 1110 (from port 0) during cycle 28 (140ns - 145ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 29 (145ns - 150ns)
*	Reading 10 from address 1110 (from port 0) during cycle 30 (150ns - 155ns)
*	Reading 10 from address 1110 (from port 0) during cycle 31 (155ns - 160ns)
*	Reading 10 from address 1110 (from port 0) during cycle 34 (170ns - 175ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 35 (175ns - 180ns)
*	Reading 10 from address 1110 (from port 0) during cycle 36 (180ns - 185ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 37 (185ns - 190ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 01 from address 0000 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 10 from address 1110 (from port 0) during cycle 41 (205ns - 210ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 11 from address 1110 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 01 from address 0000 (from port 0) during cycle 44 (220ns - 225ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 45 (225ns - 230ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 47 (235ns - 240ns)
*	Reading 11 from address 1110 (from port 0) during cycle 48 (240ns - 245ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 49 (245ns - 250ns)
*	Reading 01 from address 0000 (from port 0) during cycle 50 (250ns - 255ns)
*	Writing 10  to  address 0000 (from port 0) during cycle 51 (255ns - 260ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 52 (260ns - 265ns)
*	Reading 11 from address 0000 (from port 0) during cycle 53 (265ns - 270ns)
*	Reading 11 from address 1110 (from port 0) during cycle 55 (275ns - 280ns)
*	Reading 11 from address 0000 (from port 0) during cycle 56 (280ns - 285ns)
*	Reading 11 from address 1110 (from port 0) during cycle 57 (285ns - 290ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 11 from address 1110 (from port 0) during cycle 59 (295ns - 300ns)
*	Reading 11 from address 1110 (from port 0) during cycle 60 (300ns - 305ns)
*	Reading 11 from address 1110 (from port 0) during cycle 61 (305ns - 310ns)
*	Reading 11 from address 1110 (from port 0) during cycle 62 (310ns - 315ns)
*	Reading 11 from address 0000 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 11 from address 1110 (from port 0) during cycle 64 (320ns - 325ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 01 from address 0000 (from port 0) during cycle 66 (330ns - 335ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 67 (335ns - 340ns)
*	Reading 10 from address 1110 (from port 0) during cycle 68 (340ns - 345ns)
*	Reading 10 from address 1110 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 70 (350ns - 355ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 71 (355ns - 360ns)
*	Reading 11 from address 0000 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 11 from address 1110 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 11 from address 1110 (from port 0) during cycle 75 (375ns - 380ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 76 (380ns - 385ns)
*	Reading 11 from address 1110 (from port 0) during cycle 77 (385ns - 390ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 79 (395ns - 400ns)
*	Reading 11 from address 1110 (from port 0) during cycle 80 (400ns - 405ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 81 (405ns - 410ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 82 (410ns - 415ns)
*	Reading 11 from address 1110 (from port 0) during cycle 83 (415ns - 420ns)
*	Reading 11 from address 0000 (from port 0) during cycle 85 (425ns - 430ns)
*	Reading 11 from address 0000 (from port 0) during cycle 86 (430ns - 435ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 87 (435ns - 440ns)
*	Reading 11 from address 1110 (from port 0) during cycle 88 (440ns - 445ns)
*	Reading 11 from address 1110 (from port 0) during cycle 89 (445ns - 450ns)
*	Reading 11 from address 0000 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 11 from address 1110 (from port 0) during cycle 92 (460ns - 465ns)
*	Reading 11 from address 1110 (from port 0) during cycle 93 (465ns - 470ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 94 (470ns - 475ns)
*	Writing 11  to  address 0000 (from port 0) during cycle 95 (475ns - 480ns)
*	Reading 10 from address 1110 (from port 0) during cycle 96 (480ns - 485ns)
*	Reading 10 from address 1110 (from port 0) during cycle 97 (485ns - 490ns)
*	Reading 11 from address 0000 (from port 0) during cycle 98 (490ns - 495ns)
*	Reading 11 from address 0000 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 11 from address 0000 (from port 0) during cycle 100 (500ns - 505ns)
*	Reading 11 from address 0000 (from port 0) during cycle 101 (505ns - 510ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 11 from address 0000 (from port 0) during cycle 103 (515ns - 520ns)
*	Reading 11 from address 1110 (from port 0) during cycle 104 (520ns - 525ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 11 from address 0000 (from port 0) during cycle 106 (530ns - 535ns)
*	Reading 10 from address 1110 (from port 0) during cycle 107 (535ns - 540ns)
*	Reading 11 from address 0000 (from port 0) during cycle 108 (540ns - 545ns)
*	Reading 11 from address 0000 (from port 0) during cycle 109 (545ns - 550ns)
*	Reading 10 from address 1110 (from port 0) during cycle 111 (555ns - 560ns)
*	Reading 11 from address 0000 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 11 from address 0000 (from port 0) during cycle 114 (570ns - 575ns)
*	Reading 10 from address 1110 (from port 0) during cycle 115 (575ns - 580ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 11 from address 1110 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 11 from address 1110 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 11 from address 1110 (from port 0) during cycle 119 (595ns - 600ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 11 from address 1110 (from port 0) during cycle 124 (620ns - 625ns)
*	Reading 11 from address 1110 (from port 0) during cycle 128 (640ns - 645ns)
*	Reading 11 from address 0000 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 11 from address 0000 (from port 0) during cycle 130 (650ns - 655ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 01 from address 0000 (from port 0) during cycle 133 (665ns - 670ns)
*	Writing 01  to  address 1110 (from port 0) during cycle 134 (670ns - 675ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 136 (680ns - 685ns)
*	Reading 10 from address 1110 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 01 from address 0000 (from port 0) during cycle 138 (690ns - 695ns)
*	Reading 10 from address 1110 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 01 from address 0000 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 01 from address 0000 (from port 0) during cycle 142 (710ns - 715ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 143 (715ns - 720ns)
*	Reading 11 from address 1110 (from port 0) during cycle 145 (725ns - 730ns)
*	Writing 10  to  address 0000 (from port 0) during cycle 146 (730ns - 735ns)
*	Reading 11 from address 1110 (from port 0) during cycle 147 (735ns - 740ns)
*	Reading 10 from address 0000 (from port 0) during cycle 149 (745ns - 750ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 150 (750ns - 755ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 151 (755ns - 760ns)
*	Reading 11 from address 1110 (from port 0) during cycle 152 (760ns - 765ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 154 (770ns - 775ns)
*	Reading 01 from address 0000 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 11 from address 1110 (from port 0) during cycle 157 (785ns - 790ns)
*	Reading 01 from address 0000 (from port 0) during cycle 159 (795ns - 800ns)
*	Reading 01 from address 0000 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 01 from address 0000 (from port 0) during cycle 161 (805ns - 810ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 162 (810ns - 815ns)
*	Reading 01 from address 0000 (from port 0) during cycle 163 (815ns - 820ns)
*	Reading 01 from address 0000 (from port 0) during cycle 164 (820ns - 825ns)
*	Writing 10  to  address 0000 (from port 0) during cycle 165 (825ns - 830ns)
*	Reading 10 from address 1110 (from port 0) during cycle 167 (835ns - 840ns)
*	Writing 01  to  address 0000 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 01 from address 0000 (from port 0) during cycle 171 (855ns - 860ns)
*	Reading 10 from address 1110 (from port 0) during cycle 172 (860ns - 865ns)
*	Reading 01 from address 0000 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 01 from address 0000 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 01 from address 0000 (from port 0) during cycle 175 (875ns - 880ns)
*	Writing 10  to  address 1110 (from port 0) during cycle 177 (885ns - 890ns)
*	Reading 10 from address 1110 (from port 0) during cycle 178 (890ns - 895ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 179 (895ns - 900ns)
*	Reading 01 from address 0000 (from port 0) during cycle 180 (900ns - 905ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 01 from address 0000 (from port 0) during cycle 183 (915ns - 920ns)
*	Reading 11 from address 1110 (from port 0) during cycle 184 (920ns - 925ns)
*	Reading 01 from address 0000 (from port 0) during cycle 185 (925ns - 930ns)
*	Reading 01 from address 0000 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 01 from address 0000 (from port 0) during cycle 189 (945ns - 950ns)
*	Reading 01 from address 0000 (from port 0) during cycle 192 (960ns - 965ns)
*	Reading 11 from address 1110 (from port 0) during cycle 193 (965ns - 970ns)
*	Reading 01 from address 0000 (from port 0) during cycle 194 (970ns - 975ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 01 from address 0000 (from port 0) during cycle 196 (980ns - 985ns)
*	Reading 01 from address 0000 (from port 0) during cycle 197 (985ns - 990ns)
*	Writing 11  to  address 1110 (from port 0) during cycle 199 (995ns - 1000ns)
*	Reading 01 from address 0000 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Reading 11 from address 1110 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Writing 01  to  address 1110 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Writing 01  to  address 1110 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 0), (715, 0), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 0), (775, 1), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 1), (835, 0), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 0), (940, 1), (945, 0), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 1), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 0), (240, 1), (245, 0), (250, 1), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 1), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 0), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 1), (820, 1), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 0), (900, 1), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 1)]
VWEB0 WEB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout0_0 vdout0_0ck4 = 0 time = 25
* CHECK dout0_1 vdout0_1ck4 = 1.0 time = 25
* CHECK dout0_0 vdout0_0ck8 = 1.0 time = 45
* CHECK dout0_1 vdout0_1ck8 = 0 time = 45
* CHECK dout0_0 vdout0_0ck9 = 0 time = 50
* CHECK dout0_1 vdout0_1ck9 = 1.0 time = 50
* CHECK dout0_0 vdout0_0ck12 = 0 time = 65
* CHECK dout0_1 vdout0_1ck12 = 1.0 time = 65
* CHECK dout0_0 vdout0_0ck13 = 0 time = 70
* CHECK dout0_1 vdout0_1ck13 = 1.0 time = 70
* CHECK dout0_0 vdout0_0ck14 = 0 time = 75
* CHECK dout0_1 vdout0_1ck14 = 1.0 time = 75
* CHECK dout0_0 vdout0_0ck15 = 0 time = 80
* CHECK dout0_1 vdout0_1ck15 = 1.0 time = 80
* CHECK dout0_0 vdout0_0ck19 = 1.0 time = 100
* CHECK dout0_1 vdout0_1ck19 = 0 time = 100
* CHECK dout0_0 vdout0_0ck20 = 0 time = 105
* CHECK dout0_1 vdout0_1ck20 = 1.0 time = 105
* CHECK dout0_0 vdout0_0ck22 = 0 time = 115
* CHECK dout0_1 vdout0_1ck22 = 1.0 time = 115
* CHECK dout0_0 vdout0_0ck23 = 1.0 time = 120
* CHECK dout0_1 vdout0_1ck23 = 0 time = 120
* CHECK dout0_0 vdout0_0ck24 = 0 time = 125
* CHECK dout0_1 vdout0_1ck24 = 1.0 time = 125
* CHECK dout0_0 vdout0_0ck25 = 1.0 time = 130
* CHECK dout0_1 vdout0_1ck25 = 0 time = 130
* CHECK dout0_0 vdout0_0ck26 = 1.0 time = 135
* CHECK dout0_1 vdout0_1ck26 = 0 time = 135
* CHECK dout0_0 vdout0_0ck28 = 0 time = 145
* CHECK dout0_1 vdout0_1ck28 = 1.0 time = 145
* CHECK dout0_0 vdout0_0ck30 = 0 time = 155
* CHECK dout0_1 vdout0_1ck30 = 1.0 time = 155
* CHECK dout0_0 vdout0_0ck31 = 0 time = 160
* CHECK dout0_1 vdout0_1ck31 = 1.0 time = 160
* CHECK dout0_0 vdout0_0ck34 = 0 time = 175
* CHECK dout0_1 vdout0_1ck34 = 1.0 time = 175
* CHECK dout0_0 vdout0_0ck36 = 0 time = 185
* CHECK dout0_1 vdout0_1ck36 = 1.0 time = 185
* CHECK dout0_0 vdout0_0ck40 = 1.0 time = 205
* CHECK dout0_1 vdout0_1ck40 = 0 time = 205
* CHECK dout0_0 vdout0_0ck41 = 0 time = 210
* CHECK dout0_1 vdout0_1ck41 = 1.0 time = 210
* CHECK dout0_0 vdout0_0ck43 = 1.0 time = 220
* CHECK dout0_1 vdout0_1ck43 = 1.0 time = 220
* CHECK dout0_0 vdout0_0ck44 = 1.0 time = 225
* CHECK dout0_1 vdout0_1ck44 = 0 time = 225
* CHECK dout0_0 vdout0_0ck48 = 1.0 time = 245
* CHECK dout0_1 vdout0_1ck48 = 1.0 time = 245
* CHECK dout0_0 vdout0_0ck50 = 1.0 time = 255
* CHECK dout0_1 vdout0_1ck50 = 0 time = 255
* CHECK dout0_0 vdout0_0ck53 = 1.0 time = 270
* CHECK dout0_1 vdout0_1ck53 = 1.0 time = 270
* CHECK dout0_0 vdout0_0ck55 = 1.0 time = 280
* CHECK dout0_1 vdout0_1ck55 = 1.0 time = 280
* CHECK dout0_0 vdout0_0ck56 = 1.0 time = 285
* CHECK dout0_1 vdout0_1ck56 = 1.0 time = 285
* CHECK dout0_0 vdout0_0ck57 = 1.0 time = 290
* CHECK dout0_1 vdout0_1ck57 = 1.0 time = 290
* CHECK dout0_0 vdout0_0ck59 = 1.0 time = 300
* CHECK dout0_1 vdout0_1ck59 = 1.0 time = 300
* CHECK dout0_0 vdout0_0ck60 = 1.0 time = 305
* CHECK dout0_1 vdout0_1ck60 = 1.0 time = 305
* CHECK dout0_0 vdout0_0ck61 = 1.0 time = 310
* CHECK dout0_1 vdout0_1ck61 = 1.0 time = 310
* CHECK dout0_0 vdout0_0ck62 = 1.0 time = 315
* CHECK dout0_1 vdout0_1ck62 = 1.0 time = 315
* CHECK dout0_0 vdout0_0ck63 = 1.0 time = 320
* CHECK dout0_1 vdout0_1ck63 = 1.0 time = 320
* CHECK dout0_0 vdout0_0ck64 = 1.0 time = 325
* CHECK dout0_1 vdout0_1ck64 = 1.0 time = 325
* CHECK dout0_0 vdout0_0ck66 = 1.0 time = 335
* CHECK dout0_1 vdout0_1ck66 = 0 time = 335
* CHECK dout0_0 vdout0_0ck68 = 0 time = 345
* CHECK dout0_1 vdout0_1ck68 = 1.0 time = 345
* CHECK dout0_0 vdout0_0ck69 = 0 time = 350
* CHECK dout0_1 vdout0_1ck69 = 1.0 time = 350
* CHECK dout0_0 vdout0_0ck72 = 1.0 time = 365
* CHECK dout0_1 vdout0_1ck72 = 1.0 time = 365
* CHECK dout0_0 vdout0_0ck74 = 1.0 time = 375
* CHECK dout0_1 vdout0_1ck74 = 1.0 time = 375
* CHECK dout0_0 vdout0_0ck75 = 1.0 time = 380
* CHECK dout0_1 vdout0_1ck75 = 1.0 time = 380
* CHECK dout0_0 vdout0_0ck77 = 1.0 time = 390
* CHECK dout0_1 vdout0_1ck77 = 1.0 time = 390
* CHECK dout0_0 vdout0_0ck80 = 1.0 time = 405
* CHECK dout0_1 vdout0_1ck80 = 1.0 time = 405
* CHECK dout0_0 vdout0_0ck83 = 1.0 time = 420
* CHECK dout0_1 vdout0_1ck83 = 1.0 time = 420
* CHECK dout0_0 vdout0_0ck85 = 1.0 time = 430
* CHECK dout0_1 vdout0_1ck85 = 1.0 time = 430
* CHECK dout0_0 vdout0_0ck86 = 1.0 time = 435
* CHECK dout0_1 vdout0_1ck86 = 1.0 time = 435
* CHECK dout0_0 vdout0_0ck88 = 1.0 time = 445
* CHECK dout0_1 vdout0_1ck88 = 1.0 time = 445
* CHECK dout0_0 vdout0_0ck89 = 1.0 time = 450
* CHECK dout0_1 vdout0_1ck89 = 1.0 time = 450
* CHECK dout0_0 vdout0_0ck91 = 1.0 time = 460
* CHECK dout0_1 vdout0_1ck91 = 1.0 time = 460
* CHECK dout0_0 vdout0_0ck92 = 1.0 time = 465
* CHECK dout0_1 vdout0_1ck92 = 1.0 time = 465
* CHECK dout0_0 vdout0_0ck93 = 1.0 time = 470
* CHECK dout0_1 vdout0_1ck93 = 1.0 time = 470
* CHECK dout0_0 vdout0_0ck96 = 0 time = 485
* CHECK dout0_1 vdout0_1ck96 = 1.0 time = 485
* CHECK dout0_0 vdout0_0ck97 = 0 time = 490
* CHECK dout0_1 vdout0_1ck97 = 1.0 time = 490
* CHECK dout0_0 vdout0_0ck98 = 1.0 time = 495
* CHECK dout0_1 vdout0_1ck98 = 1.0 time = 495
* CHECK dout0_0 vdout0_0ck99 = 1.0 time = 500
* CHECK dout0_1 vdout0_1ck99 = 1.0 time = 500
* CHECK dout0_0 vdout0_0ck100 = 1.0 time = 505
* CHECK dout0_1 vdout0_1ck100 = 1.0 time = 505
* CHECK dout0_0 vdout0_0ck101 = 1.0 time = 510
* CHECK dout0_1 vdout0_1ck101 = 1.0 time = 510
* CHECK dout0_0 vdout0_0ck103 = 1.0 time = 520
* CHECK dout0_1 vdout0_1ck103 = 1.0 time = 520
* CHECK dout0_0 vdout0_0ck104 = 1.0 time = 525
* CHECK dout0_1 vdout0_1ck104 = 1.0 time = 525
* CHECK dout0_0 vdout0_0ck106 = 1.0 time = 535
* CHECK dout0_1 vdout0_1ck106 = 1.0 time = 535
* CHECK dout0_0 vdout0_0ck107 = 0 time = 540
* CHECK dout0_1 vdout0_1ck107 = 1.0 time = 540
* CHECK dout0_0 vdout0_0ck108 = 1.0 time = 545
* CHECK dout0_1 vdout0_1ck108 = 1.0 time = 545
* CHECK dout0_0 vdout0_0ck109 = 1.0 time = 550
* CHECK dout0_1 vdout0_1ck109 = 1.0 time = 550
* CHECK dout0_0 vdout0_0ck111 = 0 time = 560
* CHECK dout0_1 vdout0_1ck111 = 1.0 time = 560
* CHECK dout0_0 vdout0_0ck113 = 1.0 time = 570
* CHECK dout0_1 vdout0_1ck113 = 1.0 time = 570
* CHECK dout0_0 vdout0_0ck114 = 1.0 time = 575
* CHECK dout0_1 vdout0_1ck114 = 1.0 time = 575
* CHECK dout0_0 vdout0_0ck115 = 0 time = 580
* CHECK dout0_1 vdout0_1ck115 = 1.0 time = 580
* CHECK dout0_0 vdout0_0ck117 = 1.0 time = 590
* CHECK dout0_1 vdout0_1ck117 = 1.0 time = 590
* CHECK dout0_0 vdout0_0ck118 = 1.0 time = 595
* CHECK dout0_1 vdout0_1ck118 = 1.0 time = 595
* CHECK dout0_0 vdout0_0ck119 = 1.0 time = 600
* CHECK dout0_1 vdout0_1ck119 = 1.0 time = 600
* CHECK dout0_0 vdout0_0ck124 = 1.0 time = 625
* CHECK dout0_1 vdout0_1ck124 = 1.0 time = 625
* CHECK dout0_0 vdout0_0ck128 = 1.0 time = 645
* CHECK dout0_1 vdout0_1ck128 = 1.0 time = 645
* CHECK dout0_0 vdout0_0ck129 = 1.0 time = 650
* CHECK dout0_1 vdout0_1ck129 = 1.0 time = 650
* CHECK dout0_0 vdout0_0ck130 = 1.0 time = 655
* CHECK dout0_1 vdout0_1ck130 = 1.0 time = 655
* CHECK dout0_0 vdout0_0ck133 = 1.0 time = 670
* CHECK dout0_1 vdout0_1ck133 = 0 time = 670
* CHECK dout0_0 vdout0_0ck137 = 0 time = 690
* CHECK dout0_1 vdout0_1ck137 = 1.0 time = 690
* CHECK dout0_0 vdout0_0ck138 = 1.0 time = 695
* CHECK dout0_1 vdout0_1ck138 = 0 time = 695
* CHECK dout0_0 vdout0_0ck139 = 0 time = 700
* CHECK dout0_1 vdout0_1ck139 = 1.0 time = 700
* CHECK dout0_0 vdout0_0ck140 = 1.0 time = 705
* CHECK dout0_1 vdout0_1ck140 = 0 time = 705
* CHECK dout0_0 vdout0_0ck142 = 1.0 time = 715
* CHECK dout0_1 vdout0_1ck142 = 0 time = 715
* CHECK dout0_0 vdout0_0ck145 = 1.0 time = 730
* CHECK dout0_1 vdout0_1ck145 = 1.0 time = 730
* CHECK dout0_0 vdout0_0ck147 = 1.0 time = 740
* CHECK dout0_1 vdout0_1ck147 = 1.0 time = 740
* CHECK dout0_0 vdout0_0ck149 = 0 time = 750
* CHECK dout0_1 vdout0_1ck149 = 1.0 time = 750
* CHECK dout0_0 vdout0_0ck152 = 1.0 time = 765
* CHECK dout0_1 vdout0_1ck152 = 1.0 time = 765
* CHECK dout0_0 vdout0_0ck156 = 1.0 time = 785
* CHECK dout0_1 vdout0_1ck156 = 0 time = 785
* CHECK dout0_0 vdout0_0ck157 = 1.0 time = 790
* CHECK dout0_1 vdout0_1ck157 = 1.0 time = 790
* CHECK dout0_0 vdout0_0ck159 = 1.0 time = 800
* CHECK dout0_1 vdout0_1ck159 = 0 time = 800
* CHECK dout0_0 vdout0_0ck160 = 1.0 time = 805
* CHECK dout0_1 vdout0_1ck160 = 0 time = 805
* CHECK dout0_0 vdout0_0ck161 = 1.0 time = 810
* CHECK dout0_1 vdout0_1ck161 = 0 time = 810
* CHECK dout0_0 vdout0_0ck163 = 1.0 time = 820
* CHECK dout0_1 vdout0_1ck163 = 0 time = 820
* CHECK dout0_0 vdout0_0ck164 = 1.0 time = 825
* CHECK dout0_1 vdout0_1ck164 = 0 time = 825
* CHECK dout0_0 vdout0_0ck167 = 0 time = 840
* CHECK dout0_1 vdout0_1ck167 = 1.0 time = 840
* CHECK dout0_0 vdout0_0ck171 = 1.0 time = 860
* CHECK dout0_1 vdout0_1ck171 = 0 time = 860
* CHECK dout0_0 vdout0_0ck172 = 0 time = 865
* CHECK dout0_1 vdout0_1ck172 = 1.0 time = 865
* CHECK dout0_0 vdout0_0ck173 = 1.0 time = 870
* CHECK dout0_1 vdout0_1ck173 = 0 time = 870
* CHECK dout0_0 vdout0_0ck174 = 1.0 time = 875
* CHECK dout0_1 vdout0_1ck174 = 0 time = 875
* CHECK dout0_0 vdout0_0ck175 = 1.0 time = 880
* CHECK dout0_1 vdout0_1ck175 = 0 time = 880
* CHECK dout0_0 vdout0_0ck178 = 0 time = 895
* CHECK dout0_1 vdout0_1ck178 = 1.0 time = 895
* CHECK dout0_0 vdout0_0ck180 = 1.0 time = 905
* CHECK dout0_1 vdout0_1ck180 = 0 time = 905
* CHECK dout0_0 vdout0_0ck183 = 1.0 time = 920
* CHECK dout0_1 vdout0_1ck183 = 0 time = 920
* CHECK dout0_0 vdout0_0ck184 = 1.0 time = 925
* CHECK dout0_1 vdout0_1ck184 = 1.0 time = 925
* CHECK dout0_0 vdout0_0ck185 = 1.0 time = 930
* CHECK dout0_1 vdout0_1ck185 = 0 time = 930
* CHECK dout0_0 vdout0_0ck187 = 1.0 time = 940
* CHECK dout0_1 vdout0_1ck187 = 0 time = 940
* CHECK dout0_0 vdout0_0ck189 = 1.0 time = 950
* CHECK dout0_1 vdout0_1ck189 = 0 time = 950
* CHECK dout0_0 vdout0_0ck192 = 1.0 time = 965
* CHECK dout0_1 vdout0_1ck192 = 0 time = 965
* CHECK dout0_0 vdout0_0ck193 = 1.0 time = 970
* CHECK dout0_1 vdout0_1ck193 = 1.0 time = 970
* CHECK dout0_0 vdout0_0ck194 = 1.0 time = 975
* CHECK dout0_1 vdout0_1ck194 = 0 time = 975
* CHECK dout0_0 vdout0_0ck196 = 1.0 time = 985
* CHECK dout0_1 vdout0_1ck196 = 0 time = 985
* CHECK dout0_0 vdout0_0ck197 = 1.0 time = 990
* CHECK dout0_1 vdout0_1ck197 = 0 time = 990
* CHECK dout0_0 vdout0_0ck200 = 1.0 time = 1005
* CHECK dout0_1 vdout0_1ck200 = 0 time = 1005
* CHECK dout0_0 vdout0_0ck201 = 1.0 time = 1010
* CHECK dout0_1 vdout0_1ck201 = 1.0 time = 1010
.include /home/jwbuchta/OpenRAM/macros/example_config_freepdk45/functional_meas.sp
.TEMP 25
.OPTIONS POST=1 RELTOL=0.001 PROBE method=gear ACCT
.TRAN 100p 200n 0n 100p UIC
.control
run
write sim_results.rawspice
quit
.endc

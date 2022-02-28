// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:39:47 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [11:0]Q;

  wire CE;
  wire CLK;
  wire [11:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "11111010000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "11111010000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "11111010000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "11111010000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire CE;
  wire CLK;
  wire [11:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "11111010000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "11111010000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
nVgRPeEyctsIx/PYz8LLi+3m4K2hU5irEJFJ+XRu/YlqQhOjXjcm4ori2YFNs1vdJH/co5oX8sp+
tpFBm2+pDxceAWjFpcKdxh3m7ihcnscmZNp81qlw6RN9YeEhZj7e+gs1m+qmP0bOTy/NGp1e5xEH
IMrzmZ9pV1op4W1TMYHxHtyW59NWVR9WkdC8rNE8vQFuJK/Ehdqnlmyt1ZHdDQ4VCDU/CN+OxCbJ
r8WxzH8YsBZkaJrOLgjdhh3pNO3d698lQ5UA+tooIstreild6FTRCUXYw9xEopsYImTgG8TP5e5w
Hn+BO9dcK3lZEMUw4F3msI/ZvKui/yT/qCd65w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
E/REQn7iUApmxMUmOV4zk6yoEI2wdlEkErMq4d3uz+igqLmCi9X8UONq6lgNCmnh4IzSdvIjNwD1
8kT9T9/+of55dfNzTXlhkRfDB5bZEqHwWiTWGVF6LKxwZ1e6PrCJ8lpyEkeik6QixSjeG8rDrTc3
XqLw3etaMxzX6zV5dU7Mowb/6u1u6vd/B4jKe07P1c+QJYK6ckwQU6a8jnAz4hktn7vzPHM96U6d
ArqHYeJxo0mUZA/D7OlBNOCoZFQoEEjVNY/uQpeenff9xLbNShI0DBnjm+7jK8C08rnpnMGyoTbl
0rMuekzNGzvNK+uaMR3gOJ53Jjj5jti78HMlkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10896)
`pragma protect data_block
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
J+SDBjGObWW2
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

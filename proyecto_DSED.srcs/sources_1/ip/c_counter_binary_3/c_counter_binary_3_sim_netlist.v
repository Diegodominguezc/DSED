// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:20:06 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_counter_binary_3 -prefix
//               c_counter_binary_3_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_3
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
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
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_3_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_3_c_counter_binary_v12_0_10
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
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
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
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_3_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
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
OVpwPsGm3tR2rYWxsi54YaxPdaJ3oPmkln75Z6Hl/cIUVIyCaI3HoEmaKrRqgQSGB4f0Lvb6HeNt
D1eyHs60SO8su6MIatPuR0DmBSDScTRR9wwpnAP9x0LZoSThhgOS/lQJqMZffoBZp/iUvo4W8+5L
bWUxV6poEsbiUizt0eDesLtieXMPTe7xIZuAx1VZPMoyq/d8CUdPJ0xX+NN74XDfGssE1RnudE1r
/kTHFFFMBoYbHZE2CV0gNlRmAsouvzmsMFxY3W/nKmm41aYO4H/6q0nh3uAYiHXcnhqAFnfA5vCO
07SIlkd7lcuQGtuvXzKLN4BAVUa8V9aqlMAs+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
P9UZZQc6iOUg/Fvdxw0674CWZET0oqb27YHCmqcdqNFRjGPwoh636AsZMh2+k9PJG0bdBRO95Cry
/Y07EQN2niZLFdDpatO9s3gHT6arkw3RSEv7NzJ+icfXNCQ7y7hqGhPnXHyX4IQfgajEcaovf5km
V5dk9398iRRXbzUwd6E4uZaHMBCjJ/EhD/YdWXu7nRhUzKkm1C+7SmlFyOBXnUhCfJeQCrTedq2e
AREM3DFecxZeL5NRb9vhe7IkcFqv1q/Q5GcHt/OxzDD6bGGrziBRpYklzjbnrvZIeNMg//DHP9mp
q+wJZG1DOCyH/K2E3Svc45pR3Cqmmp3JjhLHtw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
`pragma protect data_block
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
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:39:47 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
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
  c_counter_binary_1_c_counter_binary_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_1_c_counter_binary_v12_0_10
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
  c_counter_binary_1_c_counter_binary_v12_0_10_viv i_synth
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
TDKy+W+WonaRSJQ7lXDraWGsr86WWdQSRM4SXOy78FaHTPfxgjl/g06aztwGV8DanSBk2F1OEdka
Mv2u2W2tlcj9Lm0u+JI81qTLu7Xj09v1gGPttvIeYDA0mDTCCy5jdDsopWYDgpT7a7PBH+s5MRMA
b373TQ+qqwvHosLtrZcFvP/dAJOmkuo8Cx8+44VXuOH/GUPP0ZKZCDbjoF+WgkOAi8pAZPCkfFzK
6jutWzos2I69A9xFJIi98J7NVIPWZ7RasgqbrGQdBhvwxXOIfukx3SZ88eVjfidZqrHzVa49NlT/
qErN/+c/OKBMLWQwmOZMmooWmm4b5v0jqXqmAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
boRFcVM3g5bhTZZMhoexdpKI28Q46KoUfPG+/DGJQoznf95VUYWswr+47UxTKA5IEiTbviD7ch6u
17+xgEDXlwAqZw1TDBJEjOqYGEtVmsntMaeQNT9M5InKzLt0uh8+DoFBy+wFYXuAa5LQXBBi7cH2
KL4VqbvUP0bsCySEfOppfYhbH1QNr34GVI6FgUjitaTAJfiQJ3Wkze8wratYUPv1JCjX7O7KAh5Z
WtkdqcSpf6P/0jopyTJ1fRGC14nMZ32shzh8VsnwNIttcgZFjCV3FAVXrb+EkdQitfQgXf3A6GQV
ZFq15HaFh+0+ocLh+XjVtqGvLwikaj/PTb6pFg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10976)
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

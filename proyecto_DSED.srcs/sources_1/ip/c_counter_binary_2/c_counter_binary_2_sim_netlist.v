// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:33:01 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_2/c_counter_binary_2_sim_netlist.v
// Design      : c_counter_binary_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_2,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_2
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [2:0]Q;

  wire CE;
  wire CLK;
  wire [2:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

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
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "10" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_2_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "10" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "3" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_2_c_counter_binary_v12_0_10
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
  input [2:0]L;
  output THRESH0;
  output [2:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [2:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "10" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_2_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
bJ7aUiuoYXpRINKnmDM1+JV4qgvat5Xv0axVtX23HRM9mha/k5KFNfk1aNaVi50Y8n+Vs0uWiRC4
7/71Pi3te6WbyUHAdxL4WwJBSbF+B82hL3K1FTCzLi2qVkzBFoybtK89kHWxusB1i1GrJ2pNgX6E
0w87Py67aZ/lbBKKDMvPxx+LoKmc96lcsxINCJ9mBfQMVzKkH3k4JJSHa7lvfIBp8a2GPtP2KEv8
DKtD0gzODpl+uDLIWonDDLlxVZmvgKl0kPx/stC2TQxfF5p7eKVyDUlxUyuxBlrrmtFHAVcrp3xH
9NWudhTlB7ZJ/Z+cgwGJX7zlpK48DVhpa7AUNg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
tDFpvcRceqDDxDBQ1PEheX6/IJud7ti0dBXpXKa3oioR059wbX1X3FXkz4WCF2uBAeYQ+PvCVaCU
umPFWdLlh3ZXHZWShodxgdBUQn7QsbN5V2ltIpe20p/GZrXCvKuccrqdSSx8T5BtEwppbYi520tx
BpWg0DbU+Unpp3JKiqCPj/dPFh/pr/NOPqIc/5HGFUh8MLOUoBnrH/pBpR966SItEEF8+Evtgyhk
Bu8wqUWfZ0jxctANfYJhr47Fv7HnqP+DnczlQUDG39Xg5MViYPRrjE6/rZZvl9ObYiU+FVPzWxoT
JPv21fl95dVG/kmIk7uQKIhPItN/53xrHy5e1w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5248)
`pragma protect data_block
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
cPu45A==
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

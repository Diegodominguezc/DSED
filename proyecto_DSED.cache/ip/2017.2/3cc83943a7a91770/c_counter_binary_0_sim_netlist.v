// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:18:43 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
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
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
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
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
k074AR/xcHBDWmxk/9FpPOQENABgpfOngKmEq0KMiMGmzawebi4EdA3gBAlYgsWzhRIBz2aiE92u
GRNtzFtHSEBJIaVDCPeh+hKrWwDJfoKbURnePb9JGaUnuDJ5v7QLhkdlt3VFDw5eAEMyzyz3Po6P
ZdesIYHIG8avF1297Uk60uhIpwE0MK5SlHioGp7/eHWXw3B6A3dn0R6djrDIt0yrVcMUoLdst+es
onzzoQk6DDH6CTrBO2nbCzmYi76Frg7TdJ8Js3u9UApLbMVU8dhJZkoI7/Hpyokl5uBT1APEeoPp
3R+gOGusG1q84zGoGAa6eEpgIoyk4zcprV9ifA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
u2LmrO2PapAVUg5n8ukqjN+Z8ALU4lwDD2oFsHGzmjVbzLQrrEoUPLyXfAyg6Ac6sswRt1Bg+ECC
Qg0ew6tXaUhye3EepVfAERn/569qdYdj8R67sAh3QTTn0WtJUpblPGC+s3TGmVedhXakvZx0HteL
4HB4I8ru8o46EiYSl8tY0wbQLGw74RiwImCzrUW8ck75kzq5gS1PTB4zGLXmselU4E6iuZNMdXAw
41U0stMh76skMMlmNPm+f3va8Jqx89HKc8acbYMpKV6GTi+tw5ZtQwVD49aqAZwQBF680N5kp8Xj
Arqy1CCxM9UHrLQDdI/RaU6B/IhFlePMIS5o8g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5088)
`pragma protect data_block
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
Zhsw6EhCsfbEHFUya8Ym
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

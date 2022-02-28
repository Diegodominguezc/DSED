// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:33:01 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_2_sim_netlist.v
// Design      : c_counter_binary_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_2,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
U0UmxGrh7GwKd8oGeO1Z8ejBisQfiKmGeBp2B/hszVDwQF8sjPR6H92IVHOTvIGAUR4oyzm+9Q/k
CgBcaerNWHXQk8baJGzgdEa7QkGKeNXbuEl8y+Vcr4bFmGcANi49uxYWI9PHBspzFr6wRZqSFqDS
s3mskCuH76BoIZAiTCRlEhkaRaC1Zxk8qqrwkk4EIr9pDA0JZpIg7F1I8lPCrD2fbPWxW66tz8Al
yZX29abuBhhAJ5uKMLIO6MJGieswpCbpwOQS+ujYKzcLjDf+fSBtRQ8Kn8iSGAxMJQTveF8EHlLq
ctng4t94UFh/3wPNziCFy7IqbgBGdA5KPLK7iQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
OBCjnYtJlP/Zh3995BR7lPTxLqQ/TVXBzbvzNTD42ZI9S/lvHhTkW5GBHuZs2OmXDwt+vF+PnBmJ
O/EPma5aVnt2mhXODKQIkv+sEsU8WRSxlnYm5b88rWiLl1Mg/1vxXlH8Y6j3wxhsK3WSBdXDOqDh
jyoH7fZQ95KhoL2KKGNk6YjC3MY8zTtoDEPmfu4r0CFP4Xcmak+5wrV5LHxTEO0xEdfO/cOPA5r3
Lo+P19fztTaDJ+VUIsguI3hIm8iIAFrdprSrcBnz16Ohnvp0tcGZkns068Le7PVAkQic51aXN+X7
pFJxWqiXth72wCBJYmYrn4iWJGXObTHKgYpuKA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5184)
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:20:06 2022
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
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
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
+/SIqqyXYw==
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jan 27 02:20:06 2022
// Host        : DESKTOP-FUI44JR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
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
  c_counter_binary_0_c_counter_binary_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_10
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
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
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
BNhVN+mEPQ3j670KVtjh8JBcCLULBE5PjiUHRYYXV14JGQSoNoAa69jUunr2PrfRtcfstjZd5Vij
uD3/L0AQfU7tU3gVwe5mhaVeoOqojsfBhNqIUJ8FNTxwtBoUFKX+eXwA/vX0J1xjhSonk3DFCI31
D3MO9rl2bXy5ySzf/tycXVo7haRb9McOtub22cJpgWP7+mx+OdAqzWIKTM1Kak0/IZOSf+15U7JP
qBanfd8R0rX4jrDY5zQ6+uiGO+GlxyqBilcrvHwFPhK2dnF2JxwCXjDQRTF7htd22vzHTh3g62OA
I1AoT3d3QMBH1zqRkERgVE+vAf4cJhTYMz310Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
aCJ2JU6jSwB7QZaOdcM1oleWETFwnpvmWbFWCa8pZyq1vEBBg0BnaBGhNpzZouLY5unLtiIwPTjK
8HeJHlwiySgbDOB7O3Sas/ULM5QLrXnp3QZS8feYaO+cdW1qGIKcOcJe7ybsI1nMSl6Wg8UuJFM/
m7OMhee+Jw8URgCF2xUiRFn3VJL0v61sby7s5R690esvUQ3D9PouQKQfBb9vFZpREids01cxVJy+
L8kO1SVlHTe8VYIOeq6qEOrhvO+Jhs92al0lGpTuY5l80TGw4ij0w+64Vx3RkSRidsnE42RBv5z0
qkLsaWuXNv71oYbI5aC3DI0EAh98evlZsCvTSQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6512)
`pragma protect data_block
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
yoQeVSimZP18TRMjeJc=
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

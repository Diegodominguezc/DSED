@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 2ef28c79d853435190fc5143675a8d65 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip -L xpm --snapshot fir_filter_tb1_behav xil_defaultlib.fir_filter_tb1 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

%% Filter outputs and files 

%load file
[data, fs]= audioread('C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\haha.wav');
file= fopen('C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\sample_in.dat', 'w');
fprintf(file, '%d\n', round(data.*127));

%Low pass filter
test0= filter([0.039, 0.2422, 0.4453, 0.2422, 0.039],[1, 0, 0, 0, 0], data);

%High pass filter
test1= filter([-0.0078, -0.2031, 0.6015, -0.2031, -0.0078],[1, 0, 0, 0, 0], data);

%VHDL out
vhdlout_LP=load('C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\sample_out_LP.dat')/127;
vhdlout_HP=load('C:\Users\dodec\Desktop\UPM\Cuarto\DSED\DSED-Group12\proyecto_DSED\MATLAB\sample_out_HP.dat')/127;

%% Low Pass Filter Representation

figure(1)
subplot(2,2,1);
plot(test0);
title('Low Pass Filter MATLAB')

subplot(2,2,2);
plot(vhdlout_LP);
title('Low Pass Filter VHDL')

subplot(2,2,[3,4]);
vhdlout_LP_redefined=vhdlout_LP(3:end-4); %First two samples and last samples are not taken into account by filter function.
error=test0-vhdlout_LP_redefined;
plot(error);
title('Error between Low Pass Filters')

%% High Pass Filter Representation

figure(2)
subplot(2,2,1);
plot(test1);
title('High Pass Filter MATLAB')

subplot(2,2,2);
plot(vhdlout_HP);
title('High Pass Filter VHDL')

subplot(2,2,[3,4]);
vhdlout_HP_redefined=vhdlout_HP(3:end-4); %First two samples are delayed, and last samples are not taken into account by filter function.
error=test1-vhdlout_HP_redefined;
plot(error);
title('Error between High Pass Filters')

%% Sound of filters made in VHDL

sound(vhdlout_LP);
pause(2);           %wait 2 seconds
sound(vhdlout_HP);

%% If you want to compare all the filters here you have all of them

% sound(test0);
% pause(2);
% sound(vhdlout_LP);
% pause(3);
% sound(test1);
% pause(2);
% sound(vhdlout_HP);

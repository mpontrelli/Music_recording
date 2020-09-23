%% guitar recording

% Author: Marshall Pontrelli
% Date: 09/22/2020

close all
clear all
%% record guitar and look at it
fs = 44100;
recObj = audiorecorder(fs, 24, 1);
disp('Start in 5 secs')
pause(5)
disp('Start playing')
recordblocking(recObj, 60);
disp('End of Recording.');
%play(recObj);
y = getaudiodata(recObj);

play(recObj)

%% record piano and look at it
recObj2 = audiorecorder(fs, 24, 1);
disp('Start in 5 secs')
pause(5)

disp('Start playing')

play(recObj)
recordblocking(recObj2, 60);
disp('End of Recording.');
%play(recObj);
y2 = getaudiodata(recObj2);

%% plot the waveforms
figure
subplot(2,1,1)
plot(y)
subplot(2,1,2)
plot(y2)
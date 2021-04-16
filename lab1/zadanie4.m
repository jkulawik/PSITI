load handel.mat

[y, Fs]=audioread('zad4.wav'); % Read wave file
%sound(y,Fs);
%info = audioinfo('zad4.wav');

t = 0:seconds(1/Fs):seconds(info.Duration);
t = t(1:end-1);
fs = 1000; % Częst. próbkowania

%figure(1);
%plot(t,y);
%xlabel('Time');
%ylabel('Audio Signal');


left=y(:,1); % Left channel
right=y(:,2); % Right channel
figure(1);
plot((1:length(left))/Fs, left);
title('Speech signal')
xlabel('Time (secs)');
ylabel('Audio Signal (left channel)');
%figure(2);
%plot((1:length(right))/Fs, right);  
figure(3);
cqt(left, 'SamplingFrequency', Fs);



clear;
% CWT = continuous wavelet transform

% Parametry wej�ciowe
A = 3;
f = 2;
fx = f*10; % [Hz]

% O� pozioma (czas)
t_step = 1e-3;
fs = 1/t_step; % Cz�st. pr�bkowania
t = 0:t_step:2;

% UWAGA - zadanie niedoko�czone, niewiadomo o co chodzi

n = 3; % Liczba realizacji
swe = A*sin(2*pi*fx*t);

for i=1:1:n
    swe = swe + A*sin(2*pi*fx*t + rand()*2*pi);
end
swe = swe/(n+1);
%plot(t, swe);

cwt(swe, fs);

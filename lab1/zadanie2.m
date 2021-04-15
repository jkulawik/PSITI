
% CWT = continuous wavelet transform

% Parametry wejœciowe
A = 3;
f = 2;
fx = f*10; % [Hz]

% Oœ pozioma (czas)
t_step = 1e-3;
fs = 1/t_step; % Czêst. próbkowania
t = 0:t_step:2;

n = 3; % Liczba realizacji

for i=1:1:n
    swe = swe + A*sin(2*pi*fx*t + rand()*2*pi);
end
swe = swe/n;
plot(t, swe)

%cwt(swe, fs)
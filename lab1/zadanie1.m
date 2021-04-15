
% Parametry wejœciowe
A = 3;
f = 2;
fx = f*10; % [Hz]

% Oœ pozioma (czas)
t = 0:1e-4:1;
% Sygna³ wejœciowy
swe = A*sin(2*pi*fx*t);

% Podgl¹d
plot(t, swe);

% Parametry wej�ciowe
A = 3;
f = 2;
fx = f*10; % [Hz]

% O� pozioma (czas)
t = 0:1e-4:1;
% Sygna� wej�ciowy
swe = A*sin(2*pi*fx*t);

% Podgl�d
plot(t, swe);
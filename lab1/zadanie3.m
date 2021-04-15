% Parametry wejœciowe
A = 3;
fx1 = 1000; % [Hz]
fx2 = 2000; % [Hz]

% Oœ pozioma (czas)
t_step = 1e-3;
fs = 1/t_step; % Czêst. próbkowania
t = (-1):t_step:1;

l = length(t);

swe = A*sin(2*pi*fx*t);

for i=1:1:l
    if(t(i) < 0)
        swe(i) = A*sin(2*pi*fx1*t(i));
    else
        swe(i) = A*sin(2*pi*fx2*t(i));
    end
end

plot(t, swe);


% Parametry wejœciowe
A = 3;
fx1 = 1000; % [Hz]
fx2 = 2000; % [Hz]

% Oœ pozioma (czas)
fs = 12000; % Czêst. próbkowania [Hz]
t_step = 1/fs;
t = 0:t_step:2;

% Do up³yniêcia pierwszej sekundy do swe wpisywana jest fx1
% Po niej, fx2
for i=1:1:l
    if(t(i) < 1)
        swe(i) = A*sin(2*pi*fx1*t(i));
    else
        swe(i) = A*sin(2*pi*fx2*t(i));
    end
end

cwt(swe, 'amor', fs); % amor oznacza falkê Gabora



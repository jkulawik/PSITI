% Parametry wej�ciowe
A = 3;
fx1 = 1000; % [Hz]
fx2 = 2000; % [Hz]

% O� pozioma (czas)
fs = 12000; % Cz�st. pr�bkowania [Hz]
t_step = 1/fs;
t = 0:t_step:2;

% Do pierwszej sekundy wpisywana jest fx1
% Po niej, fx2
for i=1:1:l
    if(t(i) < 1)
        swe(i) = A*sin(2*pi*fx1*t(i));
    else
        swe(i) = A*sin(2*pi*fx2*t(i));
    end
end

cwt(swe, 'amor', fs); % amor oznacza falk� Gabora



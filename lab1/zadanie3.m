% Parametry wejœciowe
A = 3;
fx1 = 100; % [Hz]
fx2 = 200; % [Hz]

% Oœ pozioma (czas)
t_step = 1e-3;
fs = 1/t_step; % Czêst. próbkowania
t = 0:t_step:2;

l = length(t);
swe = A*sin(2*pi*fx1*t);

for i=1:1:l
    if(t(i) < 1)
        swe(i) = A*sin(2*pi*fx1*t(i));
    else
        swe(i) = A*sin(2*pi*fx2*t(i));
    end
end

%plot(t, swe);

L = 128; % D³ugoœæ okna, wp³ywa na rozdzielczoœæ i dok³adnoœæ
overlap = 120; % Musi byæ mniejsze od L
freq_res = 128*4; % Rozdzielczoœæ czêst.
spectrogram(swe, L, overlap, freq_res, fs);



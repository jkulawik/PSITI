% Parametry wejœciowe
A = 3;
f = 2;
fx = f*10; % [Hz]

% Oœ pozioma (czas)
t_step = 1e-3;
fs = 1/t_step; % Czêst. próbkowania
t = 0:t_step:2;

% Sygna³ wejœciowy
swe = A*sin(2*pi*fx*t);
%plot(t, swe); % Podgl¹d sygna³u

% Ustawienia spektrogramów
L = 128*4; % D³ugoœæ okna, wp³ywa na rozdzielczoœæ i dok³adnoœæ
overlap = 120; % Musi byæ mniejsze od L
freq_res = 128*2; % Rozdzielczoœæ czêst.

% Okno prostok¹tne
figure(1);
spectrogram( swe, rectwin(L), overlap, freq_res, fs);
title('Okno prostok¹tne')

% Okno Hanna
figure(2);
spectrogram( swe, hann(L), overlap, freq_res, fs);
title('Okno Hanna')

% Okno Hamminga
figure(3);
spectrogram( swe, hamming(L), overlap, freq_res, fs);
title('Okno Hamminga')

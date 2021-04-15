% Parametry wej�ciowe
A = 3;
f = 2;
fx = f*10; % [Hz]

% O� pozioma (czas)
t_step = 1e-3;
fs = 1/t_step; % Cz�st. pr�bkowania
t = 0:t_step:2;

% Sygna� wej�ciowy
swe = A*sin(2*pi*fx*t);
%plot(t, swe); % Podgl�d sygna�u

% Ustawienia spektrogram�w
L = 128*4; % D�ugo�� okna, wp�ywa na rozdzielczo�� i dok�adno��
overlap = 120; % Musi by� mniejsze od L
freq_res = 128*2; % Rozdzielczo�� cz�st.

% Okno prostok�tne
figure(1);
spectrogram(swe, rectwin(L), overlap, freq_res, fs);
title('Okno prostok�tne')

% Okno Hanna
figure(2);
spectrogram(swe, hann(L), overlap, freq_res, fs);
title('Okno Hanna')

% Okno Hamminga
figure(3);
spectrogram(swe, hamming(L), overlap, freq_res, fs);
title('Okno Hamminga')

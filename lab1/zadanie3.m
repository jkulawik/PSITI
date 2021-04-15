% Parametry wej�ciowe
A = 3;
fx1 = 1000; % [Hz]
fx2 = 2000; % [Hz]

% O� pozioma (czas)
fs = 6000; % Cz�st. pr�bkowania [Hz]
t_step = 1/fs;
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

L = 128;
overlap = 120;
freq_res = 128*4; % Rozdzielczo�� cz�st.
spectrogram(swe, L, overlap, freq_res, fs);



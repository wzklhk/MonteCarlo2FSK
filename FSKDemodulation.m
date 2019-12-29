function signal_recv = FSKDemodulation(x1, x2, f1, f2, fs)
    % Demodulation 2FSK

    i = 1:length(x1);
    y1 = x1 .* cos(2 * pi * f1 * i);
    y2 = x2 .* cos(2 * pi * f2 * i);

    for i = 1:fs:length(y1)

        z1 = 0;
        z2 = 0;

        for j = i:i + fs - 1
            z1 = z1 + y1(j);
            z2 = z2 + y2(j);
        end

        if z1 > z2
            signal_recv(i:i + fs - 1) = 1;
        else
            signal_recv(i:i + fs - 1) = 0;
        end

    end

end

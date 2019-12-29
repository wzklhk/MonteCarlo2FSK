function [x1, x2] = FSKModulation(signal_send, f1, f2, Ts)
    % Modulation 2FSK

    %reverse
    signal_send_reverse = ~signal_send;

    % Modulation
    i = 1:length(signal_send);
    x1 = signal_send .* cos(2 * pi * f1 * i);
    x2 = signal_send_reverse .* cos(2 * pi * f2 * i);

end

function [s1, s2] = FSKModulation(signal, N, Eb)
    % Modulation 2FSK
    
    for i = 1:N

        if signal(i) == 0
            s1(i) = (2 * Eb)^0.5;
            s2(i) = 0;
        else
            s1(i) = 0;
            s2(i) = (2 * Eb)^0.5;
        end

    end

end

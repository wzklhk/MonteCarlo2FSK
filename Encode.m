function signal_send = Encode(code, Ts)

    for i = 1:length(code)

        if code(i) == 1
            signal_send(i * Ts - (Ts - 1):i * Ts) = 1;
        elseif code(i) == 0
            signal_send(i * Ts - (Ts - 1):i * Ts) = 0;
        end

    end

end

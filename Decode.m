function code_recv = Decode(signal_recv, Ts)

    for i = 1:Ts:length(signal_recv)

        if signal_recv(i:i + Ts - 1) == 1
            code_recv((i + Ts - 1) / Ts) = 1;
        elseif signal_recv(i:i + Ts - 1) == 0
            code_recv((i + Ts - 1) / Ts) = 0;
        end

    end

end

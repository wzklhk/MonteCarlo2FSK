function code_recv = FSKDemodulation(x1, x2, N)
    % Demodulation 2FSK

    for i = 1:N

        if x1(i) > x2(i)
            code_recv(i) = 0;
        else
            code_recv(i) = 1;
        end

    end

end

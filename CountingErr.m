function Pe = CountingErr(code_send, code_recv, N)
    % Counting error codes

    error_num = 0;

    for i = 1:N

        if code_recv(i) ~= code_send(i)
            error_num = error_num + 1;
        end

    end

    Pe = error_num / N;
end

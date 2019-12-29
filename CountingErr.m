function Pe = CountingErr(code_send, code_recv)
    % Counting error codes

    error_num = 0;

    for i = 1:length(code_recv)

        if code_recv(i) ~= code_send(i)
            error_num = error_num + 1;
        end

    end

    Pe = error_num / length(code_send);
end

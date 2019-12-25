function [signal] = SignalGenerator(N)
    % Random generate 0, 1 signal

    for i = 1:N
        temp = rand;

        if temp < 0.5
            signal(i) = 0;
        else
            signal(i) = 1;
        end

    end

end

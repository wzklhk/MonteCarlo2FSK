function code = CodeGenerator(N)
    % Generate N 0 or 1 codes

    for i = 1:N
        temp = rand;

        if temp < 0.5
            code(i) = 0;
        else
            code(i) = 1;
        end

    end

end

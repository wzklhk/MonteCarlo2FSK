function Pe = SNR2Pe(SNR_dB)
    % Input SNR dB
    % Output Pe

    N = 1000;

    for i = 1:length(SNR_dB)
        % code_send generation
        code_send = CodeGenerator(N);

        % code recv
        code_recv = FSKSystem(code_send, SNR_dB(i));

        % compute Pe
        Pe(i) = CountingErr(code_send, code_recv);
    end

end

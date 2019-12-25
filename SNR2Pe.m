function Pe = SNR2Pe(SNR_dB)
    % InPeut SNR dB
    % OutPeut Pee

    N = 1000;
    Eb = 1;

    for i = 1:length(SNR_dB)
        % code_send generation
        code_send = SignalGenerator(N);

        % 2FSK modulation
        [s1, s2] = FSKModulation(code_send, N, Eb);

        % Add noise
        n1 = awgn(s1, SNR_dB(i));
        n2 = awgn(s2, SNR_dB(i));

        % 2FSK demodulation
        code_recv = FSKDemodulation(n1, n2, N);

        % compute Pe
        Pe(i) = CountingErr(code_send, code_recv, N);
    end

end

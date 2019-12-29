function code_recv = FSKSystem(code_send, SNR_dB)
    % Input sended codes
    % Output recevied codes

    Ts = 100;
    f1 = 0.2;
    f2 = 0.1;

    % encode
    signal_send = Encode(code_send, Ts);

    % 2FSK modulation
    [s1, s2] = FSKModulation(signal_send, f1, f2, Ts);

    % add noise
    sn1 = awgn(s1, SNR_dB);
    sn2 = awgn(s2, SNR_dB);

    % 2FSK demodulation
    signal_recv = FSKDemodulation(sn1, sn2, f1, f2, Ts);

    % decode
    code_recv = Decode(signal_recv, Ts);
    
    subplot(2, 2, 1);
end

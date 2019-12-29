close all;
clear;
clc;

SNR_dB_a = 0:2:10;
SNR_dB_b = 0:0.1:10;

% simulation
value_simulation = SNR2Pe(SNR_dB_a);

% theory
SNR_b = 10.^(SNR_dB_b / 10);
value_theory = 1/2 * erfc(sqrt(SNR_b / 2));

% plot
semilogy(SNR_dB_a, value_simulation, 'X');
hold on;
semilogy(SNR_dB_b, value_theory);

xlabel('SNR(dB)');
ylabel('Pe');
legend('simulation', 'theory');

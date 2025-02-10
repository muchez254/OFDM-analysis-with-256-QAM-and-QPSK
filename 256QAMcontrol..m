Eb = linspace(5,15,11);
BER = [];
for i = 1:size(Eb,2)
    EbNo = Eb(i);
    sim('OFDMwith256QAM.slx')
    BER(i) = simout(1);
end

plot (Eb,BER)
title ('OFDM-256QAM BER Vs Eb/No')
xlabel('Eb/No')
ylabel('BER')
Eb = linspace(5,15,11);
BER = [];
for i = 1:size(Eb,2)
    EbNo = Eb(i);
    sim('OFDMwithQPSK.slx')
    BER(i) = simout(1);
end

plot (Eb,BER)
title ('OFDM-QPSK BER Vs Eb/No')
xlabel('Eb/No')
ylabel('BER')
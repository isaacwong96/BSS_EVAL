sc = 1;
ch = 2;

input1 = audioread('data/dev1_female3_liverec_130ms_1mmix1_PHAT_book_usingMyNMF_.wav');
input1 = input1(:,ch).';
input2 = audioread('data/dev1_female3_liverec_130ms_1mmix2_PHAT_book_usingMyNMF_.wav');
input2 = input2(:,ch).';
input3 = audioread('data/dev1_female3_liverec_130ms_1mmix3_PHAT_book_usingMyNMF_.wav');
input3 = input3(:,ch).';
input111 = audioread('data/dev1_female3_liverec_130ms_1m_sim_1.wav');
input111 = input111(:,ch).';
input222 = audioread('data/dev1_female3_liverec_130ms_1m_sim_2.wav');
input222 = input222(:,ch).';
input333 = audioread('data/dev1_female3_liverec_130ms_1m_sim_3.wav');
input333 = input333(:,ch).';
S = zeros(3, size(input111,2));
S(1,:) = input111;
S(2,:) = input222;
S(3,:) = input333;

switch(sc)
    case 2
        input1 = input2;
    case 3
        input1 = input3;
end

[s_target, e_interf, e_artif] = bss_decomp_gain(input1, sc, S);
[SDR,SIR,SAR] = bss_crit(s_target, e_interf, e_artif);
SDR
SIR
SAR

% [SDR,SIR,SAR] = bss_crit(s_target, e_interf, e_artif, ones(1, 512), 500);
% plot(SIR);
% mean(SIR)
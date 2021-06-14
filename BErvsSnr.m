snrdb=0:1:20;
ber=[0.3342
0.3224
0.3032
0.2813
0.2455
0.2113
0.1809
0.147
0.1156
0.08401
0.05804
0.03746
0.0196
0.004247
0.001513
0.0005463
0.0002196
0.000141
0.0001085
8.947e-05
7.727e-05];


snrlin=10.^(snrdb./10);
tber=0.5.*erfc(sqrt(snrlin));
semilogy(snrdb,ber,'-bo')
semilogy(snrdb,tber,'-mh')

xlabel('Signal to noise ratio');
ylabel('Bit error rate');      
grid on;
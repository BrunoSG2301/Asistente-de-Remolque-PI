clear
clc
L1 = 2.537;
L2 = 3.5;
L12 = 0.963;
A = 1/L1;
B = L12/L1*L2;
C = 1/L2;
disp(['ts ' 'Mp ' 'Kp ' 'Ki '])
for ts = 0.1:0.1:1
    for Mp = 0.05:0.01:0.1
        %calculo de seda considerando Mp
        seda = sqrt((log(Mp).^2)/((pi.^2)+(log(Mp).^2)));
        %calculo de Wn considerando ts y seda
        Wn = 4/(ts*seda);
        %calculo de Kp y Ki considernado constantes A, B, C, Wn y seda
        Kp = -((seda*Wn) + C) /(A+B); 
        Ki = -(Wn.^2)/(A+B);
        disp([ts Mp Kp Ki])
    end

end

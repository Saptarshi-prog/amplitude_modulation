function am = amplitude

Ac = input('Enter the value of carrier amplitude: ');
m = input('Enter the value of modulation index: ');
fc = input('Enter the value of carrier frequency: ');
fm = input('Enter the value of message signal frequency: ');

Tfm = 1/fm;
Tfc = 1/fc;

t1 = 0:Tfm/999:6*Tfm;
t2 = 0:Tfc/999:6*Tfc;

carrier_wave = Ac*sin(2*pi*fc*t2);
subplot(3,1,1)
plot(t2, carrier_wave, 'r');
title('carrier signal');

message_wave = (Ac/m)*sin(2*pi*fm*t1);
subplot(3,1,2)
plot(t1, message_wave, 'b');
title('Message Signal');

am = Ac*(1+m.*sin(2*pi*fm*t1)).*sin(2*pi*fc*t1);
subplot(3,1,3)
plot(t1, am, 'g');
title('Amplitude Modulated Wave');
grid on;

end
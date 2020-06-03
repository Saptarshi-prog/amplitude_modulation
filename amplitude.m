function am = amplitude

Ac = input('Enter the value of carrier amplitude: ');    
m = input('Enter the value of modulation index: ');
fc = input('Enter the value of carrier frequency: ');
fm = input('Enter the value of message signal frequency: ');

Tfm = 1/fm;       % Time-period of message signal.
Tfc = 1/fc;       % Time-eriod of carrier signal

t1 = 0:Tfm/999:6*Tfm;
t2 = 0:Tfc/999:6*Tfc;   % while plotting carrier signal so that it is scaled to it's time period

carrier_wave = Ac*sin(2*pi*fc*t2);    % initializing the carrier wave and plotting it
subplot(3,1,1)
plot(t2, carrier_wave, 'r');
title('carrier signal');

message_wave = (Ac*m)*sin(2*pi*fm*t1);    % initializing the message signal and plotting it.
subplot(3,1,2)
plot(t1, message_wave, 'b');
title('Message Signal');

am = Ac*(1+m.*sin(2*pi*fm*t1)).*sin(2*pi*fc*t1);    %initializing the amplitude modulated wave and plotting it.
subplot(3,1,3)
plot(t1, am, 'g');
title('Amplitude Modulated Wave');
grid on;      % turning the grid on so that it the values can be found out easily.

end

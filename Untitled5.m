n=input ('Masukkan panjang sinyal step Sekuen N=');
t=0:n-1;
y=ones(1,n);
stem(t,y);
ylabel ('Amplitude');
xlabel ('Time Index');
title ('Unit Step Signal');
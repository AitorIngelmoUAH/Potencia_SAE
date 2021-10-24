
I0= 1;
V0=24;
F0= [5000:1000:10000];
L = 10^-6;

VIN = [5:12];
VINmin = min(VIN);

D = (V0-VINmin)/V0;
Ibobina = I0/(1-D);
fin = size(F0);

for i=1:fin(1,2)
    
    Ts(1,i) = 1/(F0(1,i));
    rizado_Corriente(1,i) = (Ts(1,i)/2*L)*V0*D*(1-D)^2;
    i=i+1;
end

rizado_Corriente_Max = max(rizado_Corriente)
Frec_Max = 4000+((find(rizado_Corriente==rizado_Corriente_Max))*1000)

rizado_Corriente_Min = min(rizado_Corriente)
Frec_Min = 4000+((find(rizado_Corriente==rizado_Corriente_Min))*1000)

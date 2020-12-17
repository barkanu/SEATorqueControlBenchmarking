clc
close

Jm =  2.781e-04; % kgm^2
Bm = 1.5e-03;   % Nms/rad
Ks = 5000;      %Nm/rad
N = 100;        % -
Jl = 0.07;      % kgm^2
Bl = 0.005;     % Nms/rad

Kenv = 5000;
Benv = 200;

Pm = tf(1, [Jm Bm 0]);
Pl = tf(1, [Jl (Bl + Benv) Kenv]);

P = (Pm/N)/(1 + Ks*Pm/(N*N) + Ks*Pl);

Wff = 628*2*pi;

Q1 = tf(Wff, [1 Wff]);

FF = inv(P)*Q1^2;

Wc = 1600*2*pi;

Q2 = tf(Wc^2, [1 sqrt(2)*Wc Wc^2]);

Dob = inv(P)*Q2;

[numFF,denFF] = tfdata(FF,'v');    % Feedforward
[numDOB,denDOB] = tfdata(Dob,'v'); % DoB of Feedforward

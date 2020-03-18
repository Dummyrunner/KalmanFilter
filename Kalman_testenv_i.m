Ts = 1e-3;

% Variables for disturbance Config
measnoiseamp = 0.01;

% Variable for choice of Variant Subsystem
thisMode = 1;
ToggleVariant; % => thisMode = 0!

% Params VDP
vdp.mue = 0.2;
vdp.x0 = 5;

% Params Mass-Spring-Damper
msd.k = 1;
msd.d = 0.2;
msd.m = 1;

msd.x0 = [5; 0];

% Matrix representation of System
k = msd.k; d=msd.d; m=msd.m;
msd.A = [0 1; -k/m -d/m];
msd.B = [0 1/m]';
msd.C = [1 0];
msd.D = 0;
clear k d m

msd_sysc = ss(msd.A,msd.B,msd.C,msd.D);
% Obtain descrete ss-representation of sys
msd_sysd = c2d(msd_sysc,Ts);
[msd.Ad,msd.Bd,msd.Cd,msd.Dd] = ssdata(msd_sysd);

% Covariance Parameters
Q = 0.05;
R = 1;
P0 = diag([0.09 1]); % seems to be the standard P0 in standard-Simulink-Kalman-Filter

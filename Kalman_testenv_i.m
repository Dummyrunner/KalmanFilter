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

msd.x0 = 5;

% Matrix representation of System
k = msd.k; d=msd.d; m=msd.m;
msd.A = [0 1; -k/m -d/m];
msd.B = [0 1/m]';
msd.C = [0 1];
msd.D = 0;
clear k d m

msd.sysc = ss(msd.A,msd.B,msd.C,msd.D);
% Obtain descrete ss-representation of sys
msd.sysd = c2d(msd.sysc,Ts);
[msd.Ad,msd.Bd,msd.Cd,msd.Dd] = ssdata(msd.sysd);

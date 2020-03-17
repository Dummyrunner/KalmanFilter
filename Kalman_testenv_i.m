Ts = 1e-3;

% Variables for disturbance Config
measnoiseamp = 0.01;

% Variable for choice of Variant Subsystem
thisMode = 0;

% Params VDP
vdp.mue = 0.2;
vdp.x0 = 5;

% Params Mass-Spring-Damper
msd.k = 1;
msd.d = 0.2;
msd.m = 1;

msd.x0 = 5;
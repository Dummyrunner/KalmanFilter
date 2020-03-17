function [dotxhat] = Msd_Kalman_state(xhat,u)
    k = msd.k; m = msd.m; d = msd.d;
    dotx = zeros(2,1);
    dotx = [ x(2); -d/m*xhat(2)-k/m*xhat(1)-1/m*u];
end


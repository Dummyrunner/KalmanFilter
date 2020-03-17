function [dotxhat] = Msd_Kalman_state(xhat,u)
    msd.k = 1;
    msd.d = 0.2;
    msd.m = 1;

    k = msd.k; m = msd.m; d = msd.d;
    dotx = zeros(2,1);
    dotx = [ xhat(2); -d/m*xhat(2)-k/m*xhat(1)-1/m*u];
end


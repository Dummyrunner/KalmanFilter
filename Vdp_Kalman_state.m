function [dotxhat] = Vdp_Kalman_state(xhat,u)
    mu = 0.2;
    dotxhat = zeros(2,1);
    dotxhat  = [xhat(2); mu.*(1-xhat(1)^2)*xhat(2)-xhat(1) + u];
end


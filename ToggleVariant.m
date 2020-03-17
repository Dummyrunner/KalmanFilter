switch thisMode
    case 0
        Kalman_state = @Vdp_Kalman_state;
        Kalman_out = @Vdp_Kalman_out;
        thisMode = 1;
        disp('thisMode changed to 1 (VanDerPol)');
    case 1
        Kalman_state = @Msd_Kalman_state; % currently not in use, no access from Block possible
        Kalman_out = @Msd_Kalman_out;     % currently not in use, no access from Block possible
        thisMode = 0;
        disp('thisMode changed to 0 (MassSpringDamper)');
end

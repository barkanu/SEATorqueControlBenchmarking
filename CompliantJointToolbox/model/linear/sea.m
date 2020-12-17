function [A, B, C, D, I, R, K] = sea(obj)
    
    % The computations below assume a state vector definition according to:
    % x = [q_m, q_l, q_m_dot, q_l_dot]', where 
    % q_m is the motor output angle
    % q_l is the flange angle (output of the torsion bar)
    %
    % The '_dot' denotes the temporal derivative.

    % NOTE
    % The size of I, R, K needs to be identical, square, and the number of
    % rows needs to equal the number of derivatives in the state x.
    % This is important for the construction of B_nonlinear in
    % mask_JointMechanicalSubsystem.
    
    % Inertia matrix
    I = diag([obj.I_m, obj.I_l]);

    % Damping matrix
    d_m     = obj.d_m;
    d_l     = obj.d_l; % shorthands %#ok<*PROP>
    R = [    d_m,        0;
              0,        d_l  ];

    % Stiffness matrix
    n   = obj.n;
    k_b = obj.k_b; % shorthands %#ok<*PROP>
    K = [   k_b/n^2,        -k_b/n;
            -k_b/n,           k_b   ];

    % State-space matrices
    A = [   zeros(size(I)),     eye(size(I));
            -I\K,               -I\R            ];

    % Input
    % u = [tau_m, tau_e] ==> tau_e = tau_l
    B   = [ 0,          0;
            0,          0;
            1/I(1,1),   0;
            0,          1/I(2,2)    ];
    
    % Output
    C = [     1,      0,      0,  0;           % motor position
            1/n,     -1,      0,  0;           % torsional spring position
              0,      1,      0,  0;           % link position
              0,      0,      1,  0;           % motor velocity
              0,      0,    1/n, -1;           % spring deflection rate
              0,      0,      0,  1;           % link velocity
          k_b/n,   -k_b,	  0,  0	];	      % Torsion spring torque
        
    % Direct Feedthrough
    nIn = size(B,2);
    nOut = size(C,1);
    D = zeros(nOut,nIn);
            
end
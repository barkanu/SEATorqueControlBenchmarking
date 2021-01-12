params.('n')        =        100;  %% Gear transmission ratio [.]
% Dimensions
params.('diam')     =         98;  %% Actuator diameter [mm] 
params.('len')      =        166;  %% Actuator length [mm] 
% Inertia
params.('m')        =        3.4;  %% Actuator mass [kg] 
params.('I_m')      =   2.781e-4;  %% Motor rotor inertia [kg m^2]
params.('I_g')      =     0.0000;  %% Gear inertia [kg m^2]
params.('I_l')      =       0.07;  %% Torsion bar inertia [kg m^2]
% Stiffnesses
params.('k_g')      =     0.0000;  %% Gearbox stiffness [Nm/rad]
params.('k_b')      =       5000;  %% Torsion bar stiffness [Nm/rad]
% Linear viscous friction
params.('d_m')      =     1.5e-3;  %% Motor Damping [Nms/rad]
params.('d_g')      =     0.0000;  %% Gearbox damping [Nms/rad]
params.('d_l')      =     0.0050;  %% Torsion bar damping [Nms/rad]
% Asymmetric viscous friction
params.('d_m_n')    =     1.5e-3;  %% Motor Damping - negative direction [Nms/rad]
params.('d_g_n')    =     0.0000;  %% Gearbox Damping - negative direction [Nms/rad]
params.('d_l_n')    =     0.0050;  %% Torsion bar damping - negative direction [Nms/rad]
% Linear internal viscous friction
params.('d_mg')     =     0.0000;  %% Gearbox internal damping [Nms/rad] (not identified)
params.('d_gl')     =     0.0000;  %% Torsion bar internal damping [Nms/rad] (not identified)
% Coulomb friction
params.('d_cm')     =     0.07395;  %% Motor Coulomb damping [Nm]
params.('d_cg')     =     0.0000;  %% Gearbox Coulomb damping [Nm]
params.('d_cl')     =     0.0000;  %% Torsion bar Coulomb damping [Nm]
% Asymmetric Coulomb friction
params.('d_cm_n')   =     0.06981;  %% Motor Coulomb damping - negative direction [Nm]
params.('d_cg_n')   =     0.0000;  %% Gearbox Coulomb damping - negative direction [Nm]
params.('d_cl_n')   =     0.0000;  %% Torsion bar Coulomb damping - negative direction [Nm]
% Electrical Properties
params.('k_t')      =     0.1020;  %% Torque constant [Nm/A]
params.('r')        =     0.3700;  %% Armature resistance [Ohm]
params.('x')        =     0.0004;  %% Armature inductance [H]
params.('p')        =    12.0000;  %% Number of pole pairs [.]
params.('Ts')       =     0.0010;  %% Sampling time [s]
params.('Ts_elec')  =     0.0001;  %% Sampling time for the electrical subsystem [s]
% Operating/max conditions
params.('v_0')      =         48;  %% Operating voltage [V]
params.('i_p')      =         36;  %% Peak current [A]
params.('dq_p')     =   411.5486;  %% Max. reachable speed (output) [rad/s]
% Thermal parameters
params.('r_th1')    =     1.6372;  %% Thermal Resistance Windings to Housing (theoretical value!)[K/W]
params.('r_th2')    =    15.2925;  %% Thermal Resistance Housing to Air (theoretical value!) [K/W]
params.('T_thw')    =    90.0141;  %% Thermal Time Constant of the Windings  (theoretical value!) [s]
params.('T_thm')    =  3781.1683;  %% Thermal Time Constant of the Motor  (theoretical value!) [s]
params.('Tmp_WMax') =        155;  %% Maximum Armature Temperature [�C]

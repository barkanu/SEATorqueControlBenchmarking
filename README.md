# Torque-Control-Strategies-for-a-Torsion-based-Series-Elastic-Actuator
This repository includes MATLAB/Simulink base simulations of torque control strategies for torsion based series elastic actuator.

If you don't have MATLAB installed, you can use the [Compute Capsule](https://codeocean.com/capsule/1639815/tree/v1) that we published on Code Ocean without installing any program. 

| PDF </a> |  Citation </a>  |
|--------|-----------|
| - </a> | Malzahn, J., Roozing, W., & Tsagarakis, N. (2019). The Compliant Joint Toolbox for MATLAB: An Introduction with Examples. IEEE Robotics and Automation Magazine. https://doi.org/10.1109/MRA.2019.2896360|

# User Manual
Before running the torque control simulations

1) Download the Compliant Joint Toolbox from "https://github.com/geez0x1/CompliantJointToolbox".
2) Move "SEA_model.m" from "SEA Model for Compliant Joint Toolbox" file into "\CompliantJointToolbox\examples\matlab" location.
3) Move "sea_param.m" from "SEA Model for Compliant Joint Toolbox" file into "\CompliantJointToolbox\param" location.
4) run "setCJTPaths.m" file which is inside the "Compliant Joint Toolbox" file.
5) Then run  "SEA_model.m" file which is located in "CompliantJointToolbox\examples\matlab".

After these steps you can run each simulation in simulink.

NOTE: Before running the PID with Model Based Feed-Forward and DoB controller in simulink, run the "Pn_2.m" file.
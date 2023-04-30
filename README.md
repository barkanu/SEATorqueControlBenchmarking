# Torque-Control-Strategies-for-a-Torsion-based-Series-Elastic-Actuator
This repository includes all the necessary files to re-run the experiments and simulations presented in the following paper. 

Ugurlu et al., "Benchmarking Torque Control Strategies for a Torsion based Series Elastic Actuator," Under Review
Please see the supplementary file ram20atk_Supp.pdf, provided in "Documents" folder. 

# User Manual: Simulations via Compliant Joint Toolbox
Please follow these steps:

1) Download the Compliant Joint Toolbox from "https://github.com/geez0x1/CompliantJointToolbox".
2) Move "sea.m" file from "SEA Model for Compliant Joint Toolbox" file into "\CompliantJointToolbox\model\linear" location.
3) Move "electric_dyn_2.m" file from "SEA Model for Compliant Joint Toolbox" file into "\CompliantJointToolbox\model\electrical" location.
4) Move "SEA_model.m" from "SEA Model for Compliant Joint Toolbox" file into "\CompliantJointToolbox\examples\matlab" location.
5) Move "sea_param.m" from "SEA Model for Compliant Joint Toolbox" file into "\CompliantJointToolbox\param" location.
6) run "setCJTPaths.m" file which is inside the "Compliant Joint Toolbox" file.
7) Then run  "SEA_model.m" file which is located in "CompliantJointToolbox\examples\matlab".

After these steps you can run each simulation in simulink. Note that before running the PID with Model Based Feed-Forward and DoB controller in Simulink, run the "Pn_2.m" file.

You may refer to the following YouTube video in which Erim clearly demonstrated all these steps:
https://youtu.be/Ok39-MSXmeU

Compliant Joint Toolbox can be found as below.
| PDF </a> |  Citation </a>  |
|--------|-----------|
| - </a> | Malzahn, J., Roozing, W., & Tsagarakis, N. (2019). The Compliant Joint Toolbox for MATLAB: An Introduction with Examples. IEEE Robotics and Automation Magazine. https://doi.org/10.1109/MRA.2019.2896360|

If you don't have MATLAB installed, you can use the [Compute Capsule](https://codeocean.com/capsule/1639815/tree/v1) that we published on Code Ocean without installing any program. 

# User Manual: Experiments
For each controller, the following C files are provided in a respective folder. When experimentally implementing a controller, make sure that the following files are included in the same folder alongside with myrunner.m and makefile files. The respective role of these files are as follows:

SEALibgen.c: This script includes the basic functions that are required to ensure the communication between the encoders and the Raspi 3. It is same for all the controllers.
SEALibgen.h: It is the header file of SEALibgen.c.
SEALibex.c: This script includes the controller-specific functions that are necessary to implement the torque controller in question. The duration of the experiment can be set using thisscript.
SEALibex.h: It is the header file of SEALibex.c.
SEACont.c: This script executes the controller in question. In other words, all the necessary operations are handled in this file, such as, rendering the real-time control, reading of encoders, generating the reference signal, sending motor command signals, and performing necessary mathematical operations.

In order to run the software, please follow the following
instructions:

1) Please construct the elecronics hardware and make sure it is fully integrated to your series elastic actuator. 
2) Place the libraries, necessary header and C files listed above are stored in a designated folder, alongside with the makefile file.
3) The execution of the experiment is initiated via the MATLAB script named myrunner.m.

All the necessary codes, hardware manuals and PCB files can be downloaded from the Experiment "Codes and Manuals" folder.

In this repoitory, experimental study files were created by Ahmet Talha Kansizoglu and simulation files were created by Erim Can Ozcinar
# thanks 

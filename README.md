# Robotics-A2_A2021

Progress Log as of (date specified below)
Date: 26/04/2021 
#1 Feature Tracking code uploaded by Anthony

Project Breakdown (***UPDATED 26/04/2021***)
1) Include a Matlab graphical user interface (GUI) to interact with the system. The GUI should have
advanced “teach” functionality that allows jogging the robot. It should include both individual joint
movements (like the Toolbox’s “teach”) plus enable [x,y,z] Cartesian movements. A valid addition is
to use a joystick or gamepad instead of GUI-based button presses.

Create a "teach" as a functionality **independent** of our simulation. 

2) Incorporate a functional estop (can be simulated or real) that immediately stops operations.
Disengaging the estop must not immediately resume the robot system but only permit resuming
(meaning two actions are necessary to resume). For full marks your system must be able to
recover/resume after an e-stop event.

Functional e-stop will be incorporated to the GUI. 

3) Place the system in a simulated environment that includes safety hardware (e.g. barriers, warning
signs/lights/sirens), and if relevant this may be implemented on the real robot as well and
augmented with active sensors (BONUS) where some signals are passed back to the main Matlab
program.

The simulated environment will consist of 3 soft serve dispensers with AR codes on them. Depending on the flavour picked, the robot will try to identify a particular AR code. The robot will start with a cone/bowl in the gripper and move to the dispensers, and scan the AR tags. When the desired AR tag is found, the robot will orientate towards it, and place the robot below the selected dispenser. The robot will push the bowl towards a lever that will dispense ice cream. The robot will wait a few seconds for the ice cream to dispense, and then move to place the bowl on a platform where the customer receives it. Refer to the photo below. 

![image](https://user-images.githubusercontent.com/55475995/116046993-f3d4cb80-a6b6-11eb-8585-b57febf1d5c2.png)

4) Incorporate safety functionality
a) To react to an asynchronous stop signal by a user. The system will stop based upon an action
from the user (e.g. simulated (or real) sensing of something/someone entering an unsafe zone).
b) To prevent collisions. When a simulated object (that you make and control) is placed in the path
of the robot, it will stop until there is no predicted collision or move to avoid the collision.
Active collision avoidance will be marked higher than simply detecting a collision and stopping.
c) To make the robot retreat from a simulated safety symbol using visual servoing and RMRC

For 4a), the stop functionality will be dependant on the user's decision. Whereas if the user himself senses any danger, he will be able to press the stop button (on the GUI) and halt the operation. Pressing 'START' will resume the operation.

For 4b), Firstly, we will have collision avoidance by being a distance away from the danger zone. Meaning that the reach of the robot is never in the danger zone. 
Secondly, Utilising RMRC, we will attempt active collision avoidance by creating an individual simulation where there is an obstacle in the way. (This simulation will be seperarte from our main simulation)

For 4c), Firstly, In addition to the robots arm being out of reach of the danger zone, we will have a seperate simulation where the robot will also look for a stop sign throughout its operation. The robot will in response to the stop sign, retreat away, meaning that this way it effectively avoids a danger zone. 
Secondly, we will incorporate a light curtain (laser trip wire) in the danger zone in our main simulation. 







classdef KUKA < handle
    properties
        %> Robot model
        model;
        
        %>
        workspace = [-2 2 -2 2 -0.3 2];   
        
        %> Flag to indicate if gripper is used
        useGripper = false;        
    end
    
    methods%% Class for KUKA robot simulation
function self = KUKA(useGripper)
    if nargin < 1
        useGripper = false;
    end
    self.useGripper = useGripper;
self.GetKUKARobot();
end

%% GetKUKARobot
% Given a name (optional), create and return a KUKA robot model
function GetKUKARobot(self)
%     if nargin < 1
        % Create a unique name (ms timestamp after 1ms pause)
        pause(0.001);
        name = ['KUKA Cobot'];
%     end

L1 = Link('d', 0.340, 'a', 0, 'alpha', -pi/2, 'qlim', [-2*pi, 2*pi]);
L2 = Link('d', 0,'a', 0, 'alpha', pi/2, 'qlim', [deg2rad(-360), deg2rad(360)]);
L3 = Link('d', 0.4, 'a', 0, 'alpha', pi/2, 'qlim', [deg2rad(-360), deg2rad(360)]);
L4 = Link('d', 0, 'a', 0, 'alpha', -pi/2, 'qlim', [-2*pi, 2*pi]);
L5 = Link('d', 0.4, 'a', 0, 'alpha', -pi/2, 'qlim', [-2*pi, 2*pi]);
L6 = Link('d', 0, 'a', 0, 'alpha', pi/2, 'qlim', [-2*pi, 2*pi]);
L7 = Link('d', 0.126, 'a', 0, 'alpha', 0, 'qlim', [-2*pi, 2*pi]);

    self.model = SerialLink([L1 L2 L3 L4 L5 L6 L7],'name',name);
end
 
    end
end
 
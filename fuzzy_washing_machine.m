% Fuzzy Logic System for Washing Machine Cycle Time
% Author: Harsh
% Description: Determines wash time based on Dirt Level and Load Size

clc;
clear;
close all;

% Create FIS (Mamdani)
fis = mamfis('Name','WashingMachine');

%% INPUT 1: Dirt Level
fis = addInput(fis,[0 10],'Name','Dirt');

fis = addMF(fis,'Dirt','trimf',[0 0 3],'Name','Low');
fis = addMF(fis,'Dirt','trimf',[2 5 7],'Name','Medium');
fis = addMF(fis,'Dirt','trimf',[6 10 10],'Name','High');

%% INPUT 2: Load Size
fis = addInput(fis,[0 10],'Name','Load');

fis = addMF(fis,'Load','trimf',[0 0 3],'Name','Small');
fis = addMF(fis,'Load','trimf',[2 5 7],'Name','Medium');
fis = addMF(fis,'Load','trimf',[6 10 10],'Name','Large');

%% OUTPUT: Wash Time
fis = addOutput(fis,[0 60],'Name','Time');

fis = addMF(fis,'Time','trimf',[0 0 20],'Name','Short');
fis = addMF(fis,'Time','trimf',[15 30 40],'Name','Medium');
fis = addMF(fis,'Time','trimf',[35 60 60],'Name','Long');

%% RULES
ruleList = [
    1 1 1 1 1; % Low Dirt, Small Load -> Short Time
    1 2 1 1 1; % Low Dirt, Medium Load -> Short Time
    2 1 2 1 1; % Medium Dirt, Small Load -> Medium Time
    2 3 3 1 1; % Medium Dirt, Large Load -> Long Time
    3 2 3 1 1; % High Dirt, Medium Load -> Long Time
    3 3 3 1 1; % High Dirt, Large Load -> Long Time
];

fis = addRule(fis,ruleList);

%% Display Membership Functions
figure;
plotmf(fis,'input',1);
title('Dirt Level Membership Functions');

figure;
plotmf(fis,'input',2);
title('Load Size Membership Functions');

figure;
plotmf(fis,'output',1);
title('Wash Time Membership Functions');

%% Evaluate System
input_values = [7 8]; % Example: Dirt=7, Load=8
output = evalfis(fis,input_values);

fprintf('For Dirt Level = %.2f and Load Size = %.2f\n', input_values(1), input_values(2));
fprintf('Estimated Wash Time = %.2f minutes\n', output);

%% Rule Viewer
ruleview(fis);
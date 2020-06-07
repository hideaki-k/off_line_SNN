clear 
% add the working path of matlab
addpath(genpath('../'));
addpath(genpath('C:\Users\hp731\Documents\GitHub\off_line_SNN\matlab_paf\results'));

load('ReLU_small'); %parameters for the Parametric Activation Function (PAF)
%ds = fileDatastore('ReLU_small.mat');
load('Noisy_Softplus_config');
load('small_config');
disp(cnn)
disp(af)
disp(opts)
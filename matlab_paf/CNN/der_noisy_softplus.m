function [ y ] = der_noisy_softplus(  x, sigma, af)
%DER_NOISY_SOFTPLUS Summary of this function goes here
%   Detailed explanation goes here
    p = af.tau_syn * af.S;
    %disp(af.tau_syn)    % af.tau_syn = 0.005
    % disp(af.S)           % af.S = 201 
    valid_ind = find(x<10 & x>-10 & sigma~=0);
    %disp(af.nsp_k.*sigma(valid_ind))
    y = double(x>0);
    y(valid_ind) = 1./(1.+exp(-x(valid_ind)./(af.nsp_k.*sigma(valid_ind))))*p;


end


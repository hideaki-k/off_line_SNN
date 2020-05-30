function [ y ] = noisy_softplus( x, sigma, af)
%NOISY_SOFTPLUS Summary of this function goes here
%   Detailed explanation goes here
    p = af.tau_syn * af.S;
    % disp(af.tau_syn) % af.tau_syn = 0.005
    % disp(af.nsp_k) % af.nsp_k = 0.3
    disp(af.S) % af.S = 201
    valid_ind = find(x<10 & x>-10 & sigma~=0);
    y = max(0,x) * p;
    %disp(af.nsp_k*sigma(valid_ind));
    %disp(sigma(valid_ind))
    y(valid_ind) = af.nsp_k.*sigma(valid_ind).*log(1+exp(x(valid_ind)./(af.nsp_k.*sigma(valid_ind))))*p;
    %disp(sigma)
end


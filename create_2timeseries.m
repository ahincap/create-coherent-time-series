function [tcn,tcn2]=create_2timeseries(trand,base_freq,ntim)

iflaw=zeros(1,ntim);
iflaw=iflaw(:);

rng('shuffle');
iflaw(:)=base_freq+trand*randn(1,ntim);
% fundamental frequency variation of + time points

tcn=real(fmodany(iflaw));
rng('shuffle');
iflaw(:)=base_freq+trand*randn(1,ntim);
tcn2=real(fmodany(iflaw));


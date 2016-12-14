%simulate_coherent_sources

ntim=70000; %time points
coh=0.4;    %strength of coupling between the sources

trand=0.0015; %variation in the instantaneous frequency of the oscillators

base_freq=0.02;  %base frequency of the oscillators
                 %relative to sampling freq.


%generate time-series
%the main point is that the inst. freq. varies differently around the
%central/base freq differently for the 2 sources
%with the same variability (trand) the observed coherence values
%typically vary within a few magnitudes
[tcn,tcn1]=create_2timeseries(trand,base_freq,ntim);

%calculate the coherence and see what was generated
%randomize again (create_2timeseries) if coherence too low/high

% [cxt,f]=mscohere(tcn,tcn1,hanning(512),256,512,600);
[cxt,f]=mscohere(tcn,tcn1,hanning(1024),512,1024,600);

[r,c,v]=find(11<f & f<13);

Co=cxt(r);
mCo=mean(Co);
d=abs(coh-mCo);

while d>0.01;
    %     disp(d);
    [tcn,tcn1]=create_2timeseries(trand,base_freq,ntim);
    [cxt,f]=mscohere(tcn,tcn1,hanning(1024),512,1024,600);
    %   [cxt,f]=mscohere(tcn,tcn1,hanning(512),256,512,600);
    [r,c,v]=find(f>11 & f<13);
    Co=cxt(r);
    mCo=mean(Co);
    d=abs(coh-mCo);
end;

sCo=std(Co);
display(sCo)
display(mCo)
%
plot(f(1:60),cxt(1:60))



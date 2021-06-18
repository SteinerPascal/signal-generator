SignalFrequency = 50;
SamplingFrequency = 22.05e3;
Samples_per_Cycle = SamplingFrequency/SignalFrequency;
n = 0:(Samples_per_Cycle-1);
Signal_OneCycle = sin(2*%pi*n / (SamplingFrequency/SignalFrequency));

CycleDuration = (1/SamplingFrequency) * length(n);
FullSignal = 0;
for k=1:(10/CycleDuration)
FullSignal = [FullSignal Signal_OneCycle];
end
  
sound(FullSignal)
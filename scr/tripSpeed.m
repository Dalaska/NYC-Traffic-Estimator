function [ noZeroTrip01 ] = tripSpeed( noZeroTrip01 )
% generate a coloum of speed in trip data

tripDataSize=size(noZeroTrip01);

for counter=1:tripDataSize(1)
    
    noZeroTrip01{counter,10}= noZeroTrip01{counter,5}*3600/ noZeroTrip01{counter,4};

end
  
end
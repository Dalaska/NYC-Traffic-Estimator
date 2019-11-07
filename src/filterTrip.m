function [ fltdTrip01 ] = filterTrip( noZeroTrip01 )
%filter trip to +-50% difference and add statistic of trip
dataSize=size(noZeroTrip01);
noZeroCounter=1;
fltdTrip01=cell(1,14);
for counter=1:dataSize(1)
%counter
% filter difference greater or less than 50%
tripTolerance=0.1; % accept tolerance
if (noZeroTrip01{counter,11}~=0)&&(noZeroTrip01{counter,12}>-tripTolerance)&&(noZeroTrip01{counter,12}<tripTolerance)&&(noZeroTrip01{counter,11}<noZeroTrip01{counter,13})&&(noZeroTrip01{counter,11}>noZeroTrip01{counter,14})
    fltdTrip01(noZeroCounter,1:14)=noZeroTrip01(counter,:); %transfer value to fltdTrip
    
    fltdTrip01{noZeroCounter,15}=counter; % save the index to get pathcell
    noZeroCounter=noZeroCounter+1;

end

end
fltdTrip01Cmp=cell2mat(fltdTrip01(:,12)); %cell to matrix
[fltdTrip01Cmpxds] = datastats(fltdTrip01Cmp) % statistics of trip distance comparison
figure
hist(fltdTrip01Cmp,50); 
end

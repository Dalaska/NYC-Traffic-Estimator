function [ noZeroTrip01 ] = compareTrip( noZeroTrip01, startSegments,edgeData )
% trip data, add coloum 11 distance in mile, coloum 12 comparsion bewteen
% real and estimate value
counter=0;
nztSize=size(noZeroTrip01);
for counter=1:nztSize(1)
    if (startSegments(counter,1)~=0)&&(startSegments(counter,2)~=0)
    upperBound=noZeroTrip01{counter,5}+0.005+(edgeData(startSegments(counter,1),2)+edgeData(startSegments(counter,2),2))*0.621371/1000;%+distance of first and last road segment
    lowerBound=noZeroTrip01{counter,5}-0.005-(edgeData(startSegments(counter,1),2)+edgeData(startSegments(counter,2),2))*0.621371/1000;%+distance of first and last road segment
    noZeroTrip01{counter,12}=(noZeroTrip01{counter,5}-noZeroTrip01{counter,11})/noZeroTrip01{counter,5}; % compare distance value
    noZeroTrip01{counter,13}=upperBound;
    noZeroTrip01{counter,14}=lowerBound;
    end
end
end
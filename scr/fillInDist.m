function [noZeroTrip01,pathCell,startSegments] = fillInDist( noZeroTrip01,edgeData,vertexData,DG )
% get dist data, store in trip dataset, 
% generate edgeCell, 
tic
startSegments=zeros(2,2);
dataSize=size(noZeroTrip01);
edgdtSize=size(edgeData);
pathCell=cell(dataSize(1),1);
edgeCell=cell(edgdtSize(1)+1,1); %initialize edgeCell, same number of element is number of thetotal road segements
for counter=1:dataSize(1)
pickupPoint=[ noZeroTrip01{counter,6} , noZeroTrip01{counter,7}];
dropoffPoint=[ noZeroTrip01{counter,8} , noZeroTrip01{counter,9}];
counter
[ dist,edgePath,pickupSegment,dropoffSegment ] = searchShortestPath3( pickupPoint,dropoffPoint,edgeData,vertexData,DG);
noZeroTrip01{counter,11}=dist; %trip distance
startSegments(counter,1)=pickupSegment(1);
startSegments(counter,2)=dropoffSegment(1);
pathCell{counter,1}=edgePath;

end
toc
end
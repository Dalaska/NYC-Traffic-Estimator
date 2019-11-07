function [ dist,edgePath,pickupSegment,dropoffSegment ] = searchShortestPath3( pickupPoint,dropoffPoint,edgeData,vertexData,DG)
% find dist: distance in meter, path: path of vertice, coordinates:vertice coordinate, edge path 

pickupSegment=0;
dropoffSegment=0;
segmentflag=0;

[ pickupSegment ] = findSegment2( pickupPoint,vertexData,edgeData ); % find road segment of pickup point
if (pickupSegment(1)==0)
    fprintf('cannot find pick up segment\n');
    pickupPoint;
    segmentflag=1;
end


[ dropoffSegment ] = findSegment2( dropoffPoint,vertexData,edgeData ); % find road segment of dropoff point
if (dropoffSegment(1)==0)
    fprintf('cannot find drop off segment\n');
    dropoffPoint;
    segmentflag=1;
end

if (segmentflag==0)      
[dist_meter,path] = graphshortestpath(DG,pickupSegment(3),dropoffSegment(3));
dist=dist_meter*0.621371/1000;
[ edgePath ] = searchEdgePath( path,edgeData ); %find the path of vertices

else
    dist=0;
    coordinates=0;
    edgePath=0;
end    
end


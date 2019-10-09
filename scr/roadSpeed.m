counter=20;
%for counter=1:size(taxiData1,1)
    pickupPoint=taxiData1(counter,6:7);
    dropoffPoint=taxiData1(counter,8:9);
    time=taxiData1(counter,4);
    distance=taxiData1(counter,5);
    [ dist,path,coordinates,edgePath ] = searchShortestPath( pickupPoint,dropoffPoint,edgeData,vertexData);
    dist_m=dist*0.000621371
    averageVelocity=distance*60*60/time;
%end
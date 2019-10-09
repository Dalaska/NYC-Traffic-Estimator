firstVertex=twoWayEdgeData(:,3)';
secondVertex=twoWayEdgeData(:,4)';
distanceData=twoWayEdgeData(:,2)';
DG = sparse(firstVertex,secondVertex,distanceData);
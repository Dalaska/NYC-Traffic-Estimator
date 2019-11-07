[ edgeData,vertexData ] = SortRoadData( manhattanCsv,smallmanhattan );
[ twoWayEdgeData ] = CreatTwoWay( edgeData );

%  firstVertex=edgeData(:,3)';
%  secondVertex=edgeData(:,4)';
%  distanceData=edgeData(:,2)';
%  DG = sparse(firstVertex,secondVertex,distanceData);
%  UG = tril(DG + DG')
%  [dist,path] = graphshortestpath(UG,1,20,'directed',false)
%  [ coordinates ] = SearchCrdnts( path,vertexData )


firstVertex=edgeData(:,3)';
secondVertex=edgeData(:,4)';
distanceData=edgeData(:,2)';
DG = sparse(firstVertex,secondVertex,distanceData);

[dist,path] = graphshortestpath(DG,833,11886)
[ coordinates ] = SearchCrdnts( path,vertexData )
tic
%[dist11,path1] = graphshortestpath(DG,1004,2000);
%[ edgePath ] = searchEdgePath( path1,edgeData );
%[ segment ] = findSegment2( pickupPoint,vertexData,edgeData );

% v1=[firstX,firstY,0];
% v2=[secondX,secondY,0];
% pt=[pickupPoint,0];
% a = v1 - v2;
% b = pt - v2;
% d = norm(cross(a,b))/ norm(a);

[ dist,edgePath ] = searchShortestPath3( pickupPoint,dropoffPoint,edgeData,vertexData,DG);


toc
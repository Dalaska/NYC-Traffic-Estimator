%par test
%[ tripdata ] = addIndicator( trip10k );
 tic
  [ tripNew,pathCell ] = addTripDistance( tripdata,edgeData,vertexData,DG );
 toc
 
  tic
     [ tripTimeZone ] = getTimep( tripdata );
  toc

%  [ tripNew,pathCell ] = addTripDistance( tripdata,edgeData,vertexData,DG );
% toc
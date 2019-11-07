function [ coordinates ] = SearchCrdnts( index,vertexData )
%search coordinate, index is the path vertice index

coordinates=0;
 indexSize=size(index,2);
 for counter = 1:indexSize
     coordinates(counter,1)=counter;
     coordinates(counter,3)=vertexData(index(counter),2);
     coordinates(counter,2)=vertexData(index(counter),3);
 end


end


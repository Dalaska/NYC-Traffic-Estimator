function [ edgeData,vertexData ] = SortRoadData( csv,bna )
% sort .csv .bna data into matrix stucture
[ edgeData,vertexData] = sortBnaData( bna );
[ idMatrix ] = convertCsv( csv );
edgeSize=size(edgeData,1);
previousID=0;

for counter=1:edgeSize
    currentID=edgeData(counter,5); % road ID of current segment
    
    if (currentID~=previousID) % if prious and current segment have the same road ID
        index=find(idMatrix(:,1)==currentID); 
        oneWayValue=idMatrix(index,2);
        edgeData(counter,6)=oneWayValue;
        previousID=currentID;
    else edgeData(counter,6)=oneWayValue;
end

end


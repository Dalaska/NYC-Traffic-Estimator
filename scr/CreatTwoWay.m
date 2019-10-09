function [ twoWayEdgeData ] = CreatTwoWay( edgeData )
% create two way edge data, 

    index=size(edgeData,1)+1;
    twoWayEdgeData=edgeData;
for counter= 1: size(edgeData,1)
    if(edgeData(counter,6)==1) % if it's one way do nothing. 
        ;
    else % else, two way, create the other direction.
        twoWayEdgeData(index,:)=edgeData(counter,:);
        twoWayEdgeData(index,1)=index;
        twoWayEdgeData(index,3)=edgeData(counter,4);
        twoWayEdgeData(index,4)=edgeData(counter,3);
        
        index=index+1;
    end
    
    
end
end


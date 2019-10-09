function [ twoWayEdgeData ] = twoWayEdgeData( edgeData )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    index=size(edgeData,1);
    twoWayEdgeData=edgeData;
for counter= 1: size(edgeData,1)
    if(edgeData(counter,6)==0)
        ;
    else
        twoWayEdgeData(index,:)=edgeData(counter,:);
        twoWayEdgeData(index,3)=edgeData(counter,4);
        twoWayEdgeData(index,4)=edgeData(counter,3);
        
        index=index+1;
    end
    
    
end
end


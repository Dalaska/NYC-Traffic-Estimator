function [ index ] = SearchVertex( x,y,vertexData )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

    points=[x,y];
    selectedData=vertexData(:,2:3);
    searchResult=(find(ismember(selectedData,points),1))
    
    c=isempty(searchResult)
    
    if(c==1)
        index=0
    else
        index=searchResult
    end
end


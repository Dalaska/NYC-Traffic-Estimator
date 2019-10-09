function [ idMatrix ] = convert( csv )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
idMatrix=zeros(10,2);
 for counter= 1: size(csv,1)
    idMatrix(counter,1)=csv{counter,1};
    idMatrix(counter,5)=csv{counter,5}
 end
 


end


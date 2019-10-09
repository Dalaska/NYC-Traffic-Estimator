function [ idMatrix ] = convertCsv( csv )
%get road ID from .csv file

idMatrix=zeros(10,2);
 for counter= 1: size(csv,1)
    idMatrix(counter,1)=csv{counter,1};
    idMatrix(counter,2)=csv{counter,5};
 end
 


end


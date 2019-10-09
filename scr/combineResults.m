function [ edgeCellNew ] = combineResults( edgeCellBig,edgeCellSmall)
% combine two egdgedata.

rowSize=44649;
for row=1:rowSize
    
    for column=1:48
    edgeCellNew{row,column}=[edgeCellBig{row,column},edgeCellSmall{row,column}];
    end
    
end


end
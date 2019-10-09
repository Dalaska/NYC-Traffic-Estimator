function [ edgeSpeed ] = speedResults2( roadSegment )
% summary of road segment speed 
%1.indicater, 2 number of element 3. mean, 4 standard deviateion

%edgeSpeed=zeros(28751,48,4); %initilize edgeSpeed
edgeSpeed=zeros(44649,48,4);

for rowCounter=1:44649
    for columnCounter=1:48
        if isempty(roadSegment{rowCounter,columnCounter})
 
            edgeSpeed(rowCounter,columnCounter,1)=1;

        else

        n = numel(roadSegment{rowCounter,columnCounter});
        M = mean(roadSegment{rowCounter,columnCounter});
        st = std2(roadSegment{rowCounter,columnCounter});

        edgeSpeed(rowCounter,columnCounter,2)=n;
        edgeSpeed(rowCounter,columnCounter,3)=M;
        edgeSpeed(rowCounter,columnCounter,4)=st;
        end
    end
end

end

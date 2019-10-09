function [ edgeCell,edgeCellWeekends ] = createEdgeCell3( fltdTrip01,pathCell )
% edge cell, each row represent for a road segment
ftSize=size(fltdTrip01);
edgeDataSize=44649;
edgeCell=cell(edgeDataSize,48);
edgeCellWeekends=cell(edgeDataSize,48);
for counter=1:ftSize(1)
    
path=pathCell{counter};
pathSize=numel(path);

t1=fltdTrip01{counter,1};
t2=fltdTrip01{counter,2};

[ pickupTime ] = getTime( t1 );
[ dropoffTime ] = getTime( t2 );

if(pickupTime(5)<31) % pickup
    pkptimeNumber=1+2*pickupTime(4); 
else 
    pkptimeNumber=2*(pickupTime(4)+1);
end

if(dropoffTime(5)<31)  % dropoff
    dpftimeNumber=1+2*dropoffTime(4); 
else 
    dpftimeNumber=2*(dropoffTime(4)+1);
end

if (pickupTime(6)<7)&&(pickupTime(6)>1) %pickupTime(6)it is weekday
    if (path(1)~=0)&&(pickupTime(4)~=0) %pickupTime(4)hours
            for psCounter=1:pathSize %through every elements of edgeCell
                edgeCell{path(psCounter),pkptimeNumber}=[edgeCell{path(psCounter),pkptimeNumber},fltdTrip01{counter,10}];
                    if (pkptimeNumber ~= dpftimeNumber) % pkp time and dpf time different
                        edgeCell{path(psCounter),dpftimeNumber}=[edgeCell{path(psCounter),dpftimeNumber},fltdTrip01{counter,10}];
                    end
            end 

    end
    else
        if (path(1)~=0)&&(pickupTime(4)~=0) %pickupTime(4)hours
            for psCounter=1:pathSize %through every elements of edgeCell
                edgeCellWeekends{path(psCounter),pkptimeNumber}=[edgeCellWeekends{path(psCounter),pkptimeNumber},fltdTrip01{counter,10}];
                    if (pkptimeNumber ~= dpftimeNumber) % pkp time and dpf time different
                        edgeCellWeekends{path(psCounter),dpftimeNumber}=[edgeCellWeekends{path(psCounter),dpftimeNumber},fltdTrip01{counter,10}];
                    end
            end 

        end
    
end

end
end
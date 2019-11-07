% select time zone
function [ roadSegmentSpeed, speedWeight ] = selectTime2( trip,pathCell,tripTimeZone)
inSize=size(trip,1);
roadSegmentSpeed=cell(44649,48);
speedWeight=cell(44649,48);
for counter=1:inSize
    % data is valid
    if (trip(counter,1)==0)&&(tripTimeZone(counter,1)==0)

        %current row
        timeZone=tripTimeZone(counter,:);
        
        if timeZone(7)>1 && timeZone(7)<7 % weed day
            
            currentPath=pathCell{counter,1};
            pathSize=size(currentPath,2);
 
            
            % pickup timezhone
            if (timeZone(6)>0)&&(timeZone(6)<30)
                pkptimeNumber=2*timeZone(5)+1;
            else
                pkptimeNumber=2*timeZone(5)+2;
            end
            
            % dropoff timezone
            if (timeZone(12)>0)&&(timeZone(12)<30)
                dpftimeNumber=2*timeZone(11)+1;
            else
                dpftimeNumber=2*timeZone(11)+2;
            end
            
                 if currentPath(1)~=0 % start end same road segment
                    for pCounter=1:pathSize %through every elements of edgeCell
%                         pCounter
%                         counter
%                         pkptimeNumber
                        weight=5-100*abs(trip(counter,3)-trip(counter,9))/trip(counter,3);
                        if (weight<0)||(weight>5)
                            weight=0;
                        end
                        
                        roadSegmentSpeed{currentPath(pCounter),pkptimeNumber}=[roadSegmentSpeed{currentPath(pCounter),pkptimeNumber},trip(counter,8)];
                        speedWeight{currentPath(pCounter),pkptimeNumber}=[speedWeight{currentPath(pCounter),pkptimeNumber},weight];

                            if (pkptimeNumber ~= dpftimeNumber) % pkp time and dpf time different
                                roadSegmentSpeed{currentPath(pCounter),dpftimeNumber}=[roadSegmentSpeed{currentPath(pCounter),dpftimeNumber},trip(counter,8)];
                                speedWeight{currentPath(pCounter),dpftimeNumber}=[speedWeight{currentPath(pCounter),dpftimeNumber},weight];

                            end
                    end 
                 end

        end
         
     end
 end
end
    

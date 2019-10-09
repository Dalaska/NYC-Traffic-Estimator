% estimate time
flag=3

if flag==1
estimatedTripTime=zeros(100000,6);
for counter=1:100000
    if tripNew(counter,1)==0
        day=tripTimeZone(counter,7)
        if (day>1) && (day<7)
            estimatedTripTime(counter,1)=1;% indicate data is valid
            hour=tripTimeZone(counter,5)+1
            currentPath=pathCell{counter,1}
            pathSize=size(currentPath,2)
            totalTime=0
            
            for counter2=1:pathSize
                
                edge=currentPath(1,counter2)
                if edge~=0
                distance=edgeData(edge,2)
                speed=edgeSpeed2(edge,hour,3)
                segmentTime=distance*3600/speed/1609
                totalTime=totalTime+segmentTime
                end
            end
            estimatedTripTime(counter,2)=totalTime;
            estimatedTripTime(counter,6)=tripNew(counter,2);
        end
    end
end
end

if flag==2
for counter=1:100000
    if estimatedTripTime(counter,2)>100000
        estimatedTripTime(counter,1)=3;
    end
end
end

if flag==3
    for counter=1:100000
        if estimatedTripTime(counter,1)==1
            scatter(estimatedTripTime(counter,6),estimatedTripTime(counter,2),1,'b');
            hold on
        end
    end
end

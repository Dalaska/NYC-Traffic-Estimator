%function [ tripPath ] = estimateTripTime( pickupPoint,dropoffPoint,edgeData,vertexData,DG )
% find path
index=5;
if(index==1)

        pickupPoint=[ -73.99375 , 40.74982]; %penn station
        dropoffPoint=[-74.0071,40.71325];%city hall 40.71325,-74.0071
    
        [ dist,edgePath,segmentflag ] = tripDistance ( pickupPoint,dropoffPoint,edgeData,vertexData,DG);     
        
        tripDistance=dist; 
        tripPath=edgePath;
        % search path       
        pathSize=size(tripPath,2)
        pathSpeed=zeros(pathSize,48); %(1.speed,2.distance,3 time)
        pathDistance=zeros(pathSize,1);
        pathTime=zeros(pathSize,48);

end
% find path speed
if(index==2)
        for psCounter=1:pathSize
             %pathSpeed(psCounter,:)=speededgeSpeed2(tripPath(psCounter),:,:)
             pathSpeed(psCounter,:)=edgeSpeed2(tripPath(psCounter),:,3)
        end

end

% fill zero elements
if(index==3)
    pathSpeed2=pathSpeed; %pathSpeed2, not filled
    
    for psCounter=1:pathSize
        [r,c,v]=find(pathSpeed(psCounter,:));
        rowMeans=mean(v);
        for tcounter=1:48  
            if(pathSpeed(psCounter,tcounter)==0)
               pathSpeed(psCounter,tcounter)=rowMeans;
            end
        end
    end
end

% path(road segments) distance
if(index==4)
    for psCounter=1:pathSize
        pathDistance(psCounter,1)=edgeData(tripPath(psCounter),2);
    end
end

% path time
if(index==5)
    for psCounter=1:pathSize
        for tcounter=1:48  
             pathTime(psCounter,tcounter)=pathDistance(psCounter,1)/pathSpeed(psCounter,tcounter)/1609;
        end
    end
end

triptime=zeros(1,48);
for tcounter=1:48
    triptime(1,tcounter)=sum(pathTime(:,tcounter))*60;
end
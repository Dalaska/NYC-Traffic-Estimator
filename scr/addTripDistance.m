function [ tripDataNew,pathCell ] = addTripDistance( tripData,edgeData,vertexData,DG )
%add estimated trip distance, estimated speed, path cell
%tripData column1 = 2 cannot find pickup or dropoff segment

dataSize=size(tripData);
pathCell=cell(dataSize(1),1);
tripDataNew=tripData;
    
for counter=1:dataSize(1) % parfor option
    if tripData(counter,1)==0
        pickupPoint=[ tripData(counter,5) , tripData(counter,4)];
        dropoffPoint=[ tripData(counter,7) , tripData(counter,6)];
        %counter
        [ dist,edgePath,segmentflag ] = tripDistance ( pickupPoint,dropoffPoint,edgeData,vertexData,DG);
       
        
        % segmentflag=1 cannot find pickup or dropoff segment
        if segmentflag==1
            tripDataNew(counter,1)=2;
        else
            tripDataNew(counter,9)=dist;
        end
        pathCell{counter,1}=edgePath;

    end
end

end


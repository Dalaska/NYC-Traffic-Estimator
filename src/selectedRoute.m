% search for
%tripData=trip100k_019;
%dataSize=size(tripData);
dataSize=size(tripNew);

dropCounter=0;
pickupCounter=0;
pickatPen=zeros(800,1);
selectedtrip=zeros(10,1);
selectednumber=0;

%flagStore=zeros(dataSize(1),1);
%distStore=zeros(dataSize(1),1);
%tripDataNew=tripData;

for dsCounter=1:dataSize(1) % parfor option
  
        %pickupPoint=[ tripData{dsCounter,6} , tripData{dsCounter,7} ];
        %dropoffPoint=[ tripData{dsCounter,8}, tripData{dsCounter,9}];
        
        pickupPoint=[ tripNew(dsCounter,5) , tripNew(dsCounter,4) ];
        dropoffPoint=[ tripNew(dsCounter,7), tripNew(dsCounter,6)];
        
        [ pickupSegment ] = findSegment3( pickupPoint,vertexData,edgeData );
        [ dropoffSegment ] = findSegment3( dropoffPoint,vertexData,edgeData );
    % pickup point: penn station
    if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
        pickupCounter=pickupCounter+1
        pickatPen(pickupCounter,1)=dsCounter;
        pickatPen(pickupCounter,2)=pickupSegment;
        pickatPen(pickupCounter,3)=dropoffSegment;
        dsCounter
        if(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)
            selectedtrip(n)=dsCounter
            selectednumber=selectednumber+1
        end
    
    end    
    
   % dropoff point: museum
   if (dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)
        dropCounter=dropCounter+1
        dsCounter
    end
end
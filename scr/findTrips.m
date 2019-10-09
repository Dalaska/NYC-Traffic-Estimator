% search for
%tripData=trip100k_019;
%dataSize=size(tripData);
%% search tirp01
fprintf('trip01\n')
load('workspaceinicial','-mat')
load('tripData100k_001','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber


%% search tirp02
fprintf('trip02\n')
load('workspaceinicial','-mat')
load('tripData100k_002','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp03
fprintf('trip03\n')
load('workspaceinicial','-mat')
load('tripData100k_003','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp04
fprintf('trip04\n')
load('workspaceinicial','-mat')
load('tripData100k_004','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp05
fprintf('trip05\n')
load('workspaceinicial','-mat')
load('tripData100k_005','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp06
fprintf('trip06\n')
load('workspaceinicial','-mat')
load('tripData100k_006','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp07
fprintf('trip07\n')
load('workspaceinicial','-mat')
load('tripData100k_007','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp08
fprintf('trip08\n')
load('workspaceinicial','-mat')
load('tripData100k_008','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber

%% search tirp09
fprintf('trip09\n')
load('workspaceinicial','-mat')
load('tripData100k_009','-mat')
dataSize=size(tripNew);
index=2;

dropCounter=0;
pickupCounter=0;
selectedtrip=zeros(10,1);
selectednumber=1;

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
    
        
        
        if (index==2) %pickup at penn
            if (pickupSegment==3525)||(pickupSegment==24224)||(pickupSegment==1994)||(pickupSegment==20697)||(pickupSegment==20698)
                    pickupCounter=pickupCounter+1;
                    dsCounter;
                      % drop off at city hall
%                     if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904) 
                % dropoff at weill cornell medical collage
%                  if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
                % dropoff at hilton hotel
                 %if (dropoffSegment==12639)||(dropoffSegment==20672)
                        % selectedtrip(selectednumber)=dsCounter;
                  % drop at museum      
                 if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)    
                         selectedtrip(selectednumber)=dsCounter;
                         selectednumber=selectednumber+1;
                 end

            end    

               % dropoff at city hall 
%                if (dropoffSegment==24760)||(dropoffSegment==24761)||(dropoffSegment==24762)||(dropoffSegment==24763)||(dropoffSegment==24764)||(dropoffSegment==6694)||(dropoffSegment==6695)||(dropoffSegment==6696)||(dropoffSegment==6697)||(dropoffSegment==6698)...
%                     ||(dropoffSegment==10723)||(dropoffSegment==10724)||(dropoffSegment==10725)||(dropoffSegment==10726)||(dropoffSegment==33011)||(dropoffSegment==33012)||(dropoffSegment==33013)||(dropoffSegment==33014)||(dropoffSegment==979)...
%                     ||(dropoffSegment==978)||(dropoffSegment==28903)||(dropoffSegment==28904)
        % dropoff at weill cornell medical collage
%                 if (dropoffSegment==24397)||(dropoffSegment==41529)||(dropoffSegment==24398)||(dropoffSegment==41530)...
%                     ||(dropoffSegment==14048)||(dropoffSegment==33745)||(dropoffSegment==823)
        % dropoff at hilton hotel
              % if (dropoffSegment==12639)||(dropoffSegment==20672)
               if (dropoffSegment==15976)||(dropoffSegment==15977)||(dropoffSegment==15978)||(dropoffSegment==15979)||(dropoffSegment==15980)||(dropoffSegment==15981)...
                     ||(dropoffSegment==15982)||(dropoffSegment==15983)||(dropoffSegment==15984)   
                 
                    dropCounter=dropCounter+1;
                    dsCounter;
               end
        end
        
end
dropCounter
pickupCounter
selectedtrip
selectednumber
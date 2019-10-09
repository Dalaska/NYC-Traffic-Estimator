function [ roadSegmentSpeedNew ] = combineTwoWay( roadSegmentSpeed,edgeData )
%combine two way data into one cell
roadSegmentSpeedNew=cell(28751,48);
    for counter=1:28751 
        for counter2=1:48
        roadSegmentSpeedNew{counter,counter2}=roadSegmentSpeed{counter,counter2};
        end
    end
    %inicialize roadSegmentSpeedNew
    
    for counter3=28752:44649
        %counter3
        flag=0;
        counter4=1;
        while (flag==0)&&(counter4<28752)
            if (edgeData(counter3,3)==edgeData(counter4,4))&&(edgeData(counter3,4)==edgeData(counter4,3))
                    for row=1:48
                        roadSegmentSpeedNew{counter4,row}=[roadSegmentSpeed{counter4,row},roadSegmentSpeed{counter3,row}];
                    end
                    flag=1;
                    
            
            else
                counter4=counter4+1;
                
            end
         end
     end
    

end


function [ trip_summary_Big ] = combineSummary( trip_summary_Big,trip_summary )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
        % 1 average speed
        % 2 sum of weights
        for n=1:44649
            for m=1:48
                old_weight=trip_summary_Big(n,m,2);        
                trip_summary_Big(n,m,2) = trip_summary_Big(n,m,2)+trip_summary(n,m,2); %new weight
                if (trip_summary_Big(n,m,2)~=0) % if weight=0 at denominatorm,will get wrong answer              
                        trip_summary_Big(n,m,1) = (trip_summary_Big(n,m,1)*old_weight+trip_summary(n,m,2)*trip_summary(n,m,1))/trip_summary_Big(n,m,2); 
                else
                    trip_summary_Big(n,m,1)=0;
                end
            end
         end  


end


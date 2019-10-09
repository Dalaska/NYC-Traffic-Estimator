function [ trip_summary ] = Trip_Summary( roadSegment,speedWeight)
    trip_summary=zeros(44649,48,2);
    % 1 average speed
    % 2 sum weight
for n=1:44649
        for m=1:48
            trips = roadSegment{n,m};
            weights = speedWeight{n,m};
            if isempty(trips)
                trip_summary(n,m,1)=0;
                trip_summary(n,m,2)=0;  
            else
                %trips
                %weights
                trip_summary(n,m,1)=sum(trips.*weights)/sum(weights);
                if trip_summary(n,m,1)<0
                   fprintf('error, speed<0\n');
                end
                if trip_summary(n,m,1)>60
                   trip_summary(n,m,1)=60;
                end
                trip_summary(n,m,2)=sum(weights);
            end
        end
end


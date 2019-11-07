function [ tripDataNew ] = addIndicator( tripdata )
% organize data 
% add indicator, 1st column 0 good data, 1 incomplete
% add averaverage speed
% columns: 1 indicator, 2 trip time,3 trip distance
% 4. pickup longtitude 5.pickup latitude 6. dropoff longtitude 7.dropoff latitude
% 8. average speed(c5/c4) 9 estimated trip distance 
% .

dataSize=size(tripdata,1);
tripDataNew=zeros(dataSize,9);

for counter=1:dataSize %parfor option
    if isempty(tripdata{counter,4})
        tripDataNew(counter,2)=0;
    else
    tripDataNew(counter,2)=tripdata{counter,4};%trip time
    end
    
    if isempty(tripdata{counter,5})
        tripDataNew(counter,3)=0;
    else
    tripDataNew(counter,3)=tripdata{counter,5}; %trip distance
    end
    
    if isempty(tripdata{counter,7})
        tripDataNew(counter,4)=0;
    else
    tripDataNew(counter,4)=tripdata{counter,7}; %pickup point latitude
    end
    
    if isempty(tripdata{counter,6})
        tripDataNew(counter,5)=0;
    else
    tripDataNew(counter,5)=tripdata{counter,6}; %pickup point longtitude
    end
   
    if isempty(tripdata{counter,9})
        tripDataNew(counter,6)=0;
    else
    tripDataNew(counter,6)=tripdata{counter,9}; %dropoff point latitude
    end
    
    if isempty(tripdata{counter,8})
        tripDataNew(counter,7)=0;
    else
    tripDataNew(counter,7)=tripdata{counter,8}; %dropoff point longtitude
    end
    
    % add indicator in first column
    if (tripDataNew(counter,2)==0)||(tripDataNew(counter,3)==0)||(tripDataNew(counter,4)==0)||(tripDataNew(counter,5)==0)||(tripDataNew(counter,6)==0)||(tripDataNew(counter,7)==0)
    tripDataNew(counter,1)=1;
    else
        % add average speed
        tripDataNew(counter,8)=tripDataNew(counter,3)*3600/tripDataNew(counter,2);
        
    end
    
end




end


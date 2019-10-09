function [ sortedTaxiData ] = storeTaxiData( taxiData )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    dataSize=size(taxiData,1);
    sortedTaxiData=zeros(dataSize,8);

    for counter=2:dataSize %scan each row
        
        tripTime=taxiData{counter,3};
        tripDistance=taxiData{counter,4};
        pickupX=taxiData{counter,6};
        pickupY=taxiData{counter,5};
        dropoffX=taxiData{counter,8};
        dropoffY=taxiData{counter,7};
        
        sortedTaxiData(counter,3)=tripTime;
        sortedTaxiData(counter,4)=tripDistance;
        sortedTaxiData(counter,5)=pickupX;
        sortedTaxiData(counter,6)=pickupY;
        sortedTaxiData(counter,7)=dropoffX;
        sortedTaxiData(counter,8)=dropoffY;
        
    end

end

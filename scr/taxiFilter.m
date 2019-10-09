taxiIndex=find(smallTaxiData(:,5)<3);
taxiData1=zeros(10,9);
for counter=1: (size(taxiIndex,1))
    taxiData1(counter,:)=smallTaxiData(taxiIndex(counter),:);
end
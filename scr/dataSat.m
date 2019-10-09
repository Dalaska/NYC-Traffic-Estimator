% filter zero elements
inSize=size(trip01,1);
%noZeroData=zeros(5,9);
noZeroCounter=1;
for counter=2:inSize
    if (trip01{counter,4}~=0)&&(trip01{counter,5}~=0)&&(trip01{counter,6}~=0)&&(trip01{counter,7}~=0)&&(trip01{counter,8}~=0)&&(trip01{counter,9}~=0)
    noZeroTrip01(noZeroCounter,:)=trip01(counter,:);
    noZeroCounter=noZeroCounter+1;
    end
    
end

%nonzerosTaxi = nonzeros(smallTaxiData(:,5))
 
 %[xds] = datastats(nonzerosTaxi)
% find time of selected trip
dsize=size(selectedtrip,1);
selectedset=zeros(dsize,5);

for dcounter=1:dsize
    selectedset(dcounter,1)=0; %which data set,0 trip_000
    selectedset(dcounter,2)=selectedtrip(dcounter,1); % index of row in tripNew
    selectedset(dcounter,3)=tripTimeZone(selectedtrip(dcounter,1),7); % date of the week
    
    timezone=tripTimeZone(selectedtrip(dcounter,1),5)*2;
    if (tripTimeZone(selectedtrip(dcounter,1),6)>30)
        timezone=timezone+1;
    end
    selectedset(dcounter,4)=timezone; % pickup time zone
    
    selectedset(dcounter,5)=tripNew(selectedtrip(dcounter,1),2)/60;
    
end

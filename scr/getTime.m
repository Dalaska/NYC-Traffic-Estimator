function [ timeFmt ] = getTime( dateTime )
% time array
%1/18/2012 6:49:15 AM

flag=0;
size=numel(dateTime);
dateFmt='';
monthFmt='';
yearFmt='';
hourFmt='';
minuteFmt='';
timeFmt=zeros(1,6);
counter=1;
if size>16

   while (dateTime(counter)~='/')&&(flag==0)
       dateFmt=strcat(dateFmt,dateTime(counter));
       counter=counter+1;
   end
   counter=counter+1;
   dateFmt = str2num(dateFmt);
       flag=1;
   % date     
   while (dateTime(counter)~='/')&&(flag==1)
       monthFmt=strcat(monthFmt,dateTime(counter));
       counter=counter+1;
   end
   counter=counter+1;
   monthFmt = str2num(monthFmt);
   % month
        flag=2;
        
   while (dateTime(counter)~=' ')&&(flag==2)
       yearFmt=strcat(yearFmt,dateTime(counter));
       counter=counter+1;
   end
   counter=counter+1;
        flag=3;
    yearFmt = str2num(yearFmt);
   % year
   while (dateTime(counter)~=':')&&(flag==3)
       hourFmt=strcat(hourFmt,dateTime(counter));
       counter=counter+1;
   end
   counter=counter+1;
        flag=4;
   hourFmt = str2num(hourFmt);
   % hour
   
   while (dateTime(counter)~=':')&&(flag==4)
       minuteFmt=strcat(minuteFmt,dateTime(counter));
       counter=counter+1;
   end
   counter=counter+1;
        flag=5;
   minuteFmt = str2num(minuteFmt);
   % minute
   
   if(hourFmt==12)&&(dateTime(size-1)=='A')
       hourFmt=0; %12 AM
   else if(hourFmt==12)&&(dateTime(size-1)=='P')
           ; %12 PM
       else
           if(hourFmt~=12)&&(dateTime(size-1)=='P')
           hourFmt=hourFmt+12;
           end
       end
   end

 
   dataVector=datestr([yearFmt,dateFmt,monthFmt , hourFmt, minuteFmt,0]);
   [DayNumber] = weekday(dataVector);
   timeFmt=[dateFmt monthFmt yearFmt hourFmt minuteFmt DayNumber];
end

end




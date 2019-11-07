function [ roadID ] = getRoadID( aString )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if(aString(1)=='-')
    fprintf('error,cannot get ID\n');
else
combinedS='';
counter=1;
     while(aString(counter)~='.')
         combinedS=strcat(combinedS,aString(counter));
         counter=counter+1;    
     end
     roadID = str2double(combinedS);
 % end of search x coordinate


end

end


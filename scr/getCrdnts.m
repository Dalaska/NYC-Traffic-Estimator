function [ X, Y ] = getCrdnts( aString )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if(aString(1)~='-')
    printf('errow,cannot get cooridnates');
else
combinedS='';
counter=1;
     while(aString(counter)~=',')
         combinedS=strcat(combinedS,aString(counter));
         counter=counter+1;    
     end
     X = str2double(combinedS);
 % end of search x coordinate
     combinedS='';
     counter=counter+1;
     while(counter < (size(aString,2)+1))
         combinedS=strcat(combinedS,aString(counter));
         counter=counter+1;    
     end
      Y = str2double(combinedS);
% end of search y coordinate
end

end


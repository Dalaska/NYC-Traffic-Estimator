function [ isNewVertex,indeX] = checkNewVertex( x,y,vertex )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%    indexX=find(vertex(:,2)==x);
%    indexY=find(vertex(:,3)==y);
%    
%    c1=isempty(indexX);
%    c2=isempty(indexY);
%    
%    isNewVertex=1;
   
   
%    if ((c1==0) && (c2==0))
%        if(indexX(1)==indexY(1) )
%             isNewVertex=0;
%    else
%        isNewVertex=1;
%    end
   indeX=0;
   isNewVertex=1;
   
   point=[x,y];
   vertexSize=size(vertex,1);
   for counter= 1:vertexSize
       if (point==vertex(counter,2:3))
           isNewVertex=0;
           indeX=counter;
       else
           ;
   end
   
       

end


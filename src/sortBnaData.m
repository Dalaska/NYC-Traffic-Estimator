function [ edgeData,vertexData] = sortBnaData( bnaData )
%   convert .bna data into edges and vertices

 dataSize=size(bnaData,1);
 rowCounter=1;
 firstRowFlag=0;
 vertexIndex=0;
 vertexData=zeros(10,3);
 edgeIndex=0;
 edgeData=zeros(10,6);
 
 while(rowCounter<(dataSize+1)) 
    
     currentRow=bnaData{rowCounter};
     
     if(currentRow(1)~='-')
         firstRowFlag =1;
         [ roadId ] = getRoadID( currentRow );         
         rowCounter=rowCounter+1;
         
     else
         
         [ x, y ] = getCrdnts( currentRow );
         % get coordinates
         rowCounter=rowCounter+1;
         [ isNewVertex,indexX] = checkNewVertex( x,y,vertexData ); 
         % check if coordinate are new
         
         %----------put new coordinates into vertex------------
         if (isNewVertex==1)
             vertexIndex=vertexIndex+1;
             vertexData(vertexIndex,1)=vertexIndex;
             vertexData(vertexIndex,2)=x;
             vertexData(vertexIndex,3)=y;
             
             curentIndex=vertexIndex;
         else
             curentIndex=indexX;
         end
         %----------put new length into edges------------
         if((firstRowFlag)==1)
             priousX=x;
             priousY=y;
             previousVertexIndex=vertexIndex;
         else
           [ distance] = gpsDistance( priousY,priousX,y,x );
           edgeIndex=edgeIndex+1;
           edgeData(edgeIndex,1)=edgeIndex;
           edgeData(edgeIndex,2)=distance;
           edgeData(edgeIndex,3)=previousVertexIndex;
           edgeData(edgeIndex,4)=curentIndex;
           edgeData(edgeIndex,5)=roadId;
           
           
         end
     priousX=x;
     priousY=y;
     previousVertexIndex=curentIndex;
     firstRowFlag =0;
     end
 end

end


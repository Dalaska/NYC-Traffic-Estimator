 sortedData=zeros(100,2);
 dataSize=size(smallmanhattan,1);
 rowCounter=1;
 firstRowFlag=0;
 vertexIndex=0;
 vertexData=zeros(10,3);
 edgeIndex=0;
 edgeData=zeros(10,4);
 
 while(rowCounter<(dataSize+1)) 
 %while(rowCounter<(3+1)) 
    
     currentRow=smallmanhattan{rowCounter};
     
     if(currentRow(1)~='-')
         firstRowFlag =1;
         rowCounter=rowCounter+1;
         
     else
         
         [ x, y ] = getCrdnts( currentRow );
         % get coordinates
         rowCounter=rowCounter+1;
         [ isNewVertex,indexX,indexY] = checkNewVertex( x,y,vertexData ); 
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
           distance=pdist([priousX,priousY;x,y],'euclidean')*10000;
           % mutiply 10000 to make comparable
           edgeIndex=edgeIndex+1;
           edgeData(edgeIndex,1)=edgeIndex;
           edgeData(edgeIndex,2)=distance;
           edgeData(edgeIndex,3)=previousVertexIndex;
           edgeData(edgeIndex,4)=curentIndex;
           
           
         end
     priousX=x;
     priousY=y;
     previousVertexIndex=curentIndex;
     firstRowFlag =0;
     end
 end
 
 firstVertex=edgeData(:,3)';
 secondVertex=edgeData(:,4)';
 distanceData=edgeData(:,2)';
 DG = sparse(firstVertex,secondVertex,distanceData);
 UG = tril(DG + DG')
 [dist,path] = graphshortestpath(UG,1,20,'directed',false)
 [ coordinates ] = SearchCrdnts( path,vertexData )
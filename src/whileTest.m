 sortedData=zeros(100,2,9000);
 dataSize=size(bna,1);
 dataRowCount=1;
 roadCount=1;
 while (dataRowCount<(dataSize+1))
   
  test=bna{dataRowCount}
  count=1
  combinedScan=''
  
 %---------------START search for ID----------------- 
  while(test(count)~='.')
      combinedScan=strcat(combinedScan,test(count))
      count=count+1;
  end 
  roadID = str2num(combinedScan)/100000 % make the value in scale
  sortedData(1,1,roadCount)=roadID;
 %---------------END search for ID-----------------
 
 %---------------START search for NUMBER OF SECTIONS-----------------
 combinedScan=''; 
 while(test(count)~='-')
      
      count=count+1;
 end
 while(count < size(test,2))
     combinedScan=strcat(combinedScan,test(count+1))
     count=count+1;
 end
  numberOfSections = str2num(combinedScan)
  sortedData(1,2,roadCount)=numberOfSections;
 %---------------END search for NUMBER OF SECTIONS-----------------
 %---------------START search for Coordinate-----------------
 for countRow=1 : numberOfSections
 %count row
 
 test=bna{1+countRow}
 combinedScan=''; 
 count=1;
     while(test(count)~=',')
         combinedScan=strcat(combinedScan,test(count))
         count=count+1;    
     end
     sortedData(countRow+1,1,roadCount) = str2num(combinedScan);
     % end of search x coordinate
     combinedScan='';
     count=count+1;
     while(count < (size(test,2)+1))
         combinedScan=strcat(combinedScan,test(count))
         count=count+1;    
     end
     sortedData(countRow+1,2,roadCount) = str2num(combinedScan);
 
 end
    
 dataRowCount=1+dataRowCount+numberOfSections;
 numberOfSections=0;
    
 end
 %---------------END search for Coordinate-----------------
 sortedData=zeros(100,2,9000);
 dataSize=size(bna,1);
 
 roadCount=1;
 rowCounter=1;

 while(rowCounter<(dataSize+1))  
 
 %---------------START search for ID----------------- 
  test=bna{rowCounter}
  count=1
  combinedScan='' 
  while(test(count)~='.')
      combinedScan=strcat(combinedScan,test(count))
      count=count+1;
  end 
  roadID = str2num(combinedScan)/1000000 % make the value in scale
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
  numberOfSections = str2num(combinedScan);
  sortedData(1,2,roadCount)=numberOfSections;
 %---------------END search for NUMBER OF SECTIONS-----------------

 %---------------START search for Coordinate-----------------
 sectionCounter=2;
 for rowCounter=rowCounter+1 : rowCounter+numberOfSections
 %count row
 test=bna{rowCounter}
 combinedScan=''; 
 count=1;
     while(test(count)~=',')
         combinedScan=strcat(combinedScan,test(count))
         count=count+1;    
     end
     sortedData(sectionCounter,1,roadCount) = str2num(combinedScan);
 % end of search x coordinate
     combinedScan='';
     count=count+1;
     while(count < (size(test,2)+1))
         combinedScan=strcat(combinedScan,test(count))
         count=count+1;    
     end
     sortedData(sectionCounter,2,roadCount) = str2num(combinedScan);
     sectionCounter=sectionCounter+1;
 end
 
 roadCount=roadCount+1;
 rowCounter=rowCounter+1;
 % end of search y coordinate

end   
 %---------------END search for Coordinate-----------------
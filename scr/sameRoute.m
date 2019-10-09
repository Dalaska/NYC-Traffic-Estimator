% search same route
sameNumber=zeros(100000,1);
for counter=1:100000 
      counter
        currentPath=pathCell{counter};
        if (~(isempty(currentPath)))&&(currentPath(1)~=0) % valid data
        
        pathSize=size(currentPath,2);
        firstNode=currentPath(1);
        lastNode=currentPath(pathSize);
        sameN=0;

        for counter2=counter+1:100000
            
                path2=pathCell{counter2};
             if (~(isempty(path2)))&&(path2(1)~=0)   
                pathSize2=size(path2,2);
                firstNode2=path2(1);
                lastNode2=path2(pathSize2);
                if firstNode==firstNode2
                    if lastNode2==lastNode
                        sameN=sameN+1;
                    end
                end
            end
        end

        sameNumber(counter,1)=sameN;
        end
 
end
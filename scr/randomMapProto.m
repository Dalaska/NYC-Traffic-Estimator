points = rand(5,2)*10;
xCrdnts=points(:,1)
[sortedX,index]=sort(xCrdnts)
sortedPoints=zeros(5,2);
for counter =1:5
    sortedPoints(counter,1)=sortedX(counter)
    sortedPoints(counter,2)=points(index(counter),2)
end
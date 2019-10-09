%plot route
index=5
R=[0,216,0]/256;
if(index==5) % plot route
    edgeSize=size(tripPath,2);
    for ecounter=1:edgeSize
        point1=edgeData(tripPath(1,ecounter),3);
        point2=edgeData(tripPath(1,ecounter),4);
        pointx=[vertexData(point1,2),vertexData(point2,2)];
        pointy=[vertexData(point1,3),vertexData(point2,3)];
        plot(pointx,pointy,'LineWidth',3,'Color',R);
    end
end
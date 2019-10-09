%convert edgeData
distNew=zeros(44649,1);
for rcounter=1:44649
p1=edgeData(rcounter,3);
p2=edgeData(rcounter,4);
Lat1=vertexData(p1,3);
Lon1=vertexData(p1,2);
[e1,n1,utmzone1] = wgs2utm(Lat1,Lon1);
Lat2=vertexData(p2,3);
Lon2=vertexData(p2,2);
[e2,n2,utmzone2] = wgs2utm(Lat2,Lon2);
distNew(rcounter,1)=sqrt((n1-n2)^2+(e1-e2)^2);

end
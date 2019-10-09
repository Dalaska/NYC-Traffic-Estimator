% print out pickup and dropoff points
figure
whitebg([0 .0 .0])
hold on
axis equal

%print out map
color = [60, 60, 60]/256;
tic
parfor counter=1:44649
    latitudeP=[vertexData(edgeData(counter,3),2),vertexData(edgeData(counter,4),2)];
    longitudeP=[vertexData(edgeData(counter,3),3),vertexData(edgeData(counter,4),3)];
    plot(latitudeP,longitudeP,'LineWidth',1,'Color',color);

end
toc

% tic
% for counter2=1:10000
% if mtrip10k(counter2,1)==0
% % print out pickup points
%     plot(mtrip10k(counter2,5),mtrip10k(counter2,4),'r');
% % print out dropoff points
%     plot(mtrip10k(counter2,7),mtrip10k(counter2,6),'r');
% end
% end
% toc
plot(pickupPoint(1),pickupPoint(2),'r');
plot(vertexData(edgeData(segment,3),2),vertexData(edgeData(segment,4),2),'r');

latitudeP=[vertexData(edgeData(segment,3),2),vertexData(edgeData(segment,4),2)];
longitudeP=[vertexData(edgeData(segment,3),3),vertexData(edgeData(segment,4),3)];
plot(latitudeP,longitudeP,'LineWidth',1,'Color','r');
function [ color ] = plotMapPoints( vertexData,edgeData,tripNew )

%time=4;
%fhandle=figure;
%set(fhandle, 'visible','off')
figure
whitebg([1 1.0 1.0])
hold on
axis equal



for counter=1:28751
latitudeP=[vertexData(edgeData(counter,3),2),vertexData(edgeData(counter,4),2)];
longitudeP=[vertexData(edgeData(counter,3),3),vertexData(edgeData(counter,4),3)];
    
color = [240, 240, 240]/256;
plot(latitudeP,longitudeP,'LineWidth',1,'Color',color);

end

scatter(tripNew(:,5),tripNew(:,4),1,'r');
scatter(tripNew(:,7),tripNew(:,6),1,'b');

%axis([ -74.02 -73.94 40.7 40.85])
%title('Pickup and Drop-off Points Locations')
%xlabel('Longtitude')
%ylabel('Latitude')
%text(-74.01, 40.795, 'Average Road Speed in Manhattan (Weekday)', 'Color', [180,180,180]/256);
%text(-74.01, 40.795, 'Weekday:', 'Color', [180,180,180]/256);
axis([ -74.04 -73.88 40.70 40.86])

%set(gca,'Color',[0.0 0.0 0.0])
%set(gcf, 'InvertHardCopy', 'off');

filename=['pointDsbn'];
saveas(gcf,filename,'png')

end
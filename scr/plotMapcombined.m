%plot map combined
index=4;

if(index==1) % plot just map
    time=4;
    fhandle=figure;
    %set(fhandle, 'visible','off')
    %whitebg([0 .0 .0])
    whitebg([1.0 1.0 1.0])
    hold on
    axis equal


    % define color 
    R=[231,47,39]/256;
    YR=[238,113,25]/256;
    Y=[255,200,8]/256;
    GY=[170,198,27]/256;
    G=[19,166,50]/256;
    BG=[4,148,87]/256;

    for counter=1:28751
    latitudeP=[vertexData(edgeData(counter,3),2),vertexData(edgeData(counter,4),2)];
    longitudeP=[vertexData(edgeData(counter,3),3),vertexData(edgeData(counter,4),3)];
    speed=edgeSpeed(counter,time,3);


    color = [38, 38, 38]/256;
    plot(latitudeP,longitudeP,'LineWidth',1,'Color',color);

    end
    axis([ -74.038 -73.92 40.70 40.82])
   
    title('Taxi Drop-off Locations')
    xlabel('Longtitude')
    ylabel('Latitude')
    %text(-74.01, 40.795, 'Average Road Speed in Manhattan (Weekday)', 'Color', [180,180,180]/256);
    %text(-74.01, 40.795, 'Weekday:', 'Color', [180,180,180]/256); 
    %text(-74.01, 40.792, textcontent, 'Color', [180,180,180]/256);

   
    set(gca,'Color',[.99 .99 0.99])
    set(gcf, 'InvertHardCopy', 'off');
     hold on 
end

if (index==2) % plot pickup points
    load('pickatPen','-mat')
    load('tripData100k_000','-mat')
    pennPickpoints=zeros(329,2);
    for pcounter=1:329
        pennPickpoints(pcounter,1)=tripNew(pickatPen(pcounter,1),4);
        pennPickpoints(pcounter,2)=tripNew(pickatPen(pcounter,1),5);
    end


    for pcounter=1:329
            scatter(pennPickpoints(pcounter,2),pennPickpoints(pcounter,1),'g','*');
    end
end


if (index==3) % plot droffoff points more data
    for pcounter=1:1096
            scatter(penndropoff(pcounter,3),penndropoff(pcounter,2),'r','.');
    end
    
end

%plot route

if(index==4) % plot route
    R=[0,216,0]/256;
    edgeSize=size(tripPath,2);
    for ecounter=1:edgeSize
        point1=edgeData(tripPath(1,ecounter),3);
        point2=edgeData(tripPath(1,ecounter),4);
        pointx=[vertexData(point1,2),vertexData(point2,2)];
        pointy=[vertexData(point1,3),vertexData(point2,3)];
        plot(pointx,pointy,'LineWidth',5,'Color',R);
    end
end
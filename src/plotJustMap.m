% use tripData100k_000
index=5;
if(index==1) % plot map
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


    color = [120, 120, 120]/256;
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
    pennPickpoints=zeros(329,2);
    for pcounter=1:329
        pennPickpoints(pcounter,1)=tripNew(pickatPen(pcounter,1),4);
        pennPickpoints(pcounter,2)=tripNew(pickatPen(pcounter,1),5);
    end


    for pcounter=1:329
            scatter(pennPickpoints(pcounter,2),pennPickpoints(pcounter,1),'g','*');
    end
end

if (index==3)% plot droffoff points
   penndroppoints=zeros(329,2);
    for pcounter=1:329
        penndroppoints(pcounter,1)=tripNew(pickatPen(pcounter,1),6);
        penndroppoints(pcounter,2)=tripNew(pickatPen(pcounter,1),7);
    end
end

if (index==4) % plot droffoff points more data
    for pcounter=1:1096
            scatter(penndropoff(pcounter,3),penndropoff(pcounter,2),'r','.');
    end
    
end

if (index==5) % plot droffoff points more data
    for rowcounter=1:2000
                %scatter(tripNew(rowcounter,5),tripNew(rowcounter,4),'b','.');
                %scatter(tripNew(rowcounter,7),tripNew(rowcounter,6),'r','.');
                plot(tripNew(rowcounter,5),tripNew(rowcounter,4),'.','MarkerSize',5,'Color',[0/256,0/256,255/256]);
                plot(tripNew(rowcounter,7),tripNew(rowcounter,6),'.','MarkerSize',5,'Color',[255/256,0/256,0/256]);
    end
    
    
end
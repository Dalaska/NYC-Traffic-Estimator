%mainProcess2
flag=7;
if flag==0
load('workspaceinicial','-mat')
%counter=0
    for counter=4:5;
    % load rew file
    filename=['trip100k_00' num2str(counter)'']
    tic
       load(filename,'-mat');
        tic
        [ tripdata ] = addIndicator( eval(filename) );
        toc
        tic
        %[ tripTimeZone ] = getTime2( eval(filename) );
        [ tripTimeZone ] = getTimep( eval(filename) );
        toc
        tic
        %[ tripNew,pathCell ] = addTripDistance( tripdata,edgeData,vertexData,DG );
        [ tripNew,pathCell ] = addTripDistancep( tripdata,edgeData,vertexData,DG );
        toc

        savename1=['tripData100k_00' num2str(counter) ''];
        savename2=['timeZone100k_00' num2str(counter) ''];
        savename3=['pathCell100k_00' num2str(counter) ''];

        save(savename1,'tripNew');
        save(savename2,'tripTimeZone');
        save(savename3,'pathCell');
        %clear workspace
        clearvars -except DG edgeData vertexData 
    toc
     end
end
%%
if flag==1
    clc
    clear
    load('edgeData','-mat')
    for counter=0:9
        tic
        filename=['tripData100k_00' num2str(counter)'']
        load(filename,'-mat');
        filename=['timeZone100k_00' num2str(counter)'']
        load(filename,'-mat');
        filename=['pathCell100k_00' num2str(counter)'']
        load(filename,'-mat');

        [ tripNew ] = selectDistance( tripNew);
        [ roadSegmentSpeed ] = selectTime( tripNew,pathCell,tripTimeZone);
        savename=['roadSpeed100k_00' num2str(counter) ''];
        save(savename,'roadSegmentSpeed');
        toc
    end
   
end
%% combine roadSegment
if flag==2
    clc
    clear
    filename=['roadSpeed100k_000']
    load(filename,'-mat');
    roadSegmentBig=roadSegmentSpeed;
    clearvars -except roadSegmentBig ;
     for counter=1:9
         tic
         filename=['roadSpeed100k_00' num2str(counter)'']
         load(filename,'-mat');
         [ roadSegmentBig ] = combineResults( roadSegmentBig,roadSegmentSpeed);
         clearvars -except roadSegmentBig ;
         toc 
     end
     savename=['roadSegment1m'];
     save(savename,'roadSegmentBig');
        
end
    
%% combine two ways
if flag==3
    tic
    load('roadSegment1m','-mat')
    load('edgeData','-mat')
    [ roadSegment2way ] = combineTwoWay( roadSegmentBig,edgeData );
    savename=['roadSegment1mmdf'];
     save(savename,'roadSegment2way');
     toc
end

%% number of measurments mean deviation
if flag==4
    tic
    load('roadSegment1mmdf','-mat')
    %[ edgeSpeed2 ] = speedResults2( roadSegment2way );
    [ edgeSpeed2 ] = speedResults2( roadSegmentBig );
    savename=['speedResult1m2way'];
    save(savename,'edgeSpeed2');
    toc
end

%% plot traffic
if flag==5
    [ time ] = plotMap3( 6,vertexData,edgeData,edgeSpeed );
    [ time ] = plotMap3( 18,vertexData,edgeData,edgeSpeed );
    [ time ] = plotMap3( 30,vertexData,edgeData,edgeSpeed );
    [ time ] = plotMap3( 42,vertexData,edgeData,edgeSpeed );
end

%% plot speed
if flag==6
    roadID=15979;
    selectSpeed=edgeSpeed(roadID,:,3) 
    selectNumber=edgeSpeed(15979,:,2)
    selectStd=edgeSpeed(15979,:,4)
    time=[1:48]
    figure
    plot(time,selectSpeed)
    title('Road Speed at Different Time')
    xlabel('Time')
    ylabel('Average Road Speed(m/h)')
    figure
    plot(time,selectNumber)
    title('Number of Data at Different Time')
    xlabel('Time')
    ylabel('Number of Data Collected')
    figure
    plot(time,selectStd)
    title('Standard Deviation at Different Time')
    xlabel('Time')
    ylabel('Standard Deviation(miles)')
end
%% plot speed map
if flag==7
for time=41:48
    [ time ] = plotMap3( time,vertexData,edgeData,edgeSpeed );
end
end
%% plot for paper
if flag==8
for time=1:3
    [ time ] = plotMapW( (time*12+6),vertexData,edgeData,edgeSpeed );
end
end
%% plot points
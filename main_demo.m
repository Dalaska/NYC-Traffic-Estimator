clc
clear
addpath('scr');
flag=10;
%=========================================================
%           flag 1 route reconstruction
%           flag 2 roadsegment speed
%           flag 3 combine roadSegment
%           flag 3combine  trip summary big
%           flag 6 plot traffic
%           %flag 7 plot speed
%           %flag 8 plot speed map movie
%           flag 9 plot for paper white
%           flag 10 10 plot histogram
%=========================================================


%% flag 1 route reconstruction
if flag==1
load('workspaceinicial','-mat')
    for counter=0:9;  
    % load rew file
        tic
        filename=['trip100k_00' num2str(counter)'']
        %profile on, profile clear
           load(filename,'-mat');
            tic
            [ tripdata ] = addIndicator( eval(filename) );
            toc
            tic
            [ tripTimeZone ] = getTimep( eval(filename) );
            toc
            tic
            [ tripNew,pathCell ] = addTripDistancep( tripdata,edgeData,vertexData,DG );
            toc

            savename1=['tripData100k_00' num2str(counter) ''];
            savename2=['timeZone100k_00' num2str(counter) ''];
            savename3=['pathCell100k_00' num2str(counter) ''];

            save(savename1,'tripNew');
            save(savename2,'tripTimeZone');
            save(savename3,'pathCell');
            clearvars -except DG edgeData vertexData 
        %profile off
        %profsave(profile('info'),'my_program_profile')
        toc
    end
end

%% flag 2 select data and compute roadsegment speed
if flag==2
    clc
    clear
    load('workspaceinicial','-mat')
    %load('edgeData','-mat')
    for counter=0:9    %%===================== change
        tic
        filename=['tripData100k_00' num2str(counter)'']
        load(filename,'-mat');
        filename=['timeZone100k_00' num2str(counter)'']
        load(filename,'-mat');
        filename=['pathCell100k_00' num2str(counter)'']
        load(filename,'-mat');

        [ tripNew ] = selectDistance( tripNew);
        [ roadSegmentSpeed,speedWeight ] = selectTime2( tripNew,pathCell,tripTimeZone);
        [ trip_summary ] = Trip_Summary( roadSegmentSpeed,speedWeight );
        savename=['trip_summary100k_00' num2str(counter) ''];
        save(savename,'trip_summary');
        toc
    end
    trip_summary=zeros(44649,48,2);
end


%% combine  combine roadSegment NEW
if flag==3
    clc
    clear
    filename=['trip_summary100k_000']
    load(filename,'-mat');
    trip_summary_Big=trip_summary;
    clearvars -except trip_summary_Big ;
     for counter=1:9 %%===================== change
         tic
         filename=['trip_summary100k_00' num2str(counter)'']
         load(filename,'-mat');
         %[ roadSegmentBig ] = combineResults( roadSegmentBig,roadSegmentSpeed);
         [ trip_summary_Big ] = combineSummary( trip_summary_Big,trip_summary );      
         toc 
     end
     savename=['trip_summary_Big_1m_0'];
     save(savename,'trip_summary_Big');        
end

%% combine  trip summary big
if flag==4
    clc
    clear
    filename=['trip_summary_Big_1m_0']
    load(filename,'-mat');
    trip_summary_super_Big=trip_summary_Big;
    clearvars -except trip_summary_super_Big ;
     for counter=1:14 %%===================== change
         tic
         filename=['trip_summary_Big_1m_' num2str(counter)'']
         load(filename,'-mat');
          [ trip_summary_super_Big ] = combineSummary( trip_summary_super_Big,trip_summary_Big );      
         toc 
     end
  
     x=trip_summary_super_Big(:,:,2);
     y=trip_summary_Big(:,:,1);
end

     
 
%% flag 5 number of measurments mean deviation
if flag==5
    tic
    load('roadSegment1m','-mat')
    %[ edgeSpeed2 ] = speedResults2( roadSegment2way );
    [ edgeSpeed2 ] = speedResults2( roadSegmentBig );
    savename=['speedResult1m2way'];
    save(savename,'edgeSpeed2');
    toc
end

%% flag 6 plot traffic

if flag==6
    load('workspaceinicial','-mat')
    load('speedResult1m','-mat')
    [ time ] = plotMap3( 6,vertexData,edgeData,edgeSpeed );
    [ time ] = plotMap3( 18,vertexData,edgeData,edgeSpeed );
    [ time ] = plotMap3( 30,vertexData,edgeData,edgeSpeed );
    [ time ] = plotMap3( 42,vertexData,edgeData,edgeSpeed );
end

%% flag 7 plot speed
if flag==7
    load('workspaceinicial','-mat')
    load('speedResult1m','-mat')
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

%% flag 8 plot speed map movie
if flag==8
    load('workspaceinicial','-mat')
    load('speedResult1m','-mat')
for time=1:48
    [ time ] = plotMap3( time,vertexData,edgeData,edgeSpeed );
end
end

%% flag 9 plot for paper
if flag==9
    load('workspaceinicial','-mat')
    load('trip_summary_super_Big_14m','-mat')
    edgeSpeed=trip_summary_super_Big;
for time=0:3
    %[ time ] = plotMapW( (time*12+6),vertexData,edgeData,edgeSpeed );
    [ time ] = plotMapW2( (time*12+6),vertexData,edgeData,edgeSpeed );

end
end

%%  10 plot histogram
if flag==10
    load('trip_summary_super_Big_14m','-mat')
    n=3
    time=n*12+6;
    speed=trip_summary_super_Big(:,time,1);
    count=1
    for x=1:size(speed,1)
        if speed(x)~=0
            pstv_speed(count)=speed(x);
            count=count+1;
        end
    end
    count
    figure 
    m_speed = median(pstv_speed)
    numOfBins = 50;
    [histFreq, histXout] = hist(pstv_speed,numOfBins);
    bar(histXout, histFreq/sum(histFreq));
    h = findobj(gca,'Type','patch');
    set(h,'FaceColor','w','EdgeColor','k')
    axis([0 40 0 0.2])
    hold on
    plot([m_speed,m_speed],[0,0.2],'--r','LineWidth',4)

end
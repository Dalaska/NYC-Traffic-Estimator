function [ time ] = plotMapW( time,vertexData,edgeData,edgeSpeed )

%time=4;
fhandle=figure;
set(fhandle, 'visible','off')
%whitebg([0 .0 .0])
%whitebg([1.0 1.0 1.0])
hold on
axis equal


% define color 
% R=[231,47,39]/256;
% YR=[238,113,25]/256;
% Y=[255,200,8]/256;
% GY=[170,198,27]/256;
% G=[19,166,50]/256;
% BG=[4,148,87]/256;

% RP=[209,100,109]/256;
% P=[178,137,166]/256;
% PB=[59,130,157]/256;
% B=[0,147,159]/256;
% BG=[43,151,89]/256;
% G=[88,171,45]/256;

RP=[207,46,49]/256;
P=[226,132,45]/256;
PB=[227,189,28]/256;
B=[162,179,36]/256;
BG=[18,154,47]/256;
G=[6,134,84]/256;


for counter=1:28751
latitudeP=[vertexData(edgeData(counter,3),2),vertexData(edgeData(counter,4),2)];
longitudeP=[vertexData(edgeData(counter,3),3),vertexData(edgeData(counter,4),3)];
speed=edgeSpeed(counter,time,3);
%map speed to color

% speed<10 coler: R
% 10<speed<17.5 coler: YR
% 17.5<speed<25 coler: Y
% 25<speed<32.5 coler: GY
% 32.5<speed<40 coler: G
% speed>40 coler: BG

if (speed>0)&&(speed<5)  
    color=RP;
else if (speed>5)&&(speed<10) 
        color=P;
    else if (speed>10)&&(speed<15)
            color=PB;
        else if (speed>15)&&(speed<20)
                color=B;
            else if (speed>20)&&(speed<25)
                    color=BG;
                else if (speed>25)
                        color=G;
                    else color = [230, 230, 230]/256;
                    end
                end
            end
        end
    end
end
        

plot(latitudeP,longitudeP,'LineWidth',1,'Color',color);

end
axis([ -74.012 -73.93 40.74 40.80])
title('Speed Map of Manhattan')
xlabel('Longtitude')
ylabel('Latitude')
%text(-74.01, 40.795, 'Average Road Speed in Manhattan (Weekday)', 'Color', [180,180,180]/256);
text(-74.01, 40.795, 'Weekday:', 'Color', [1,1,1]/256);

% print hours
switch time
    case 1
        textcontent=[' 12 : 00 am - 12 : 29 am '];
    case 2
        textcontent=[' 12 : 30 am - 12 : 59 am '];
    case 3
        textcontent=[' 01 : 00 am - 01 : 29 am '];
    case 4
        textcontent=[' 01 : 30 am - 01 : 59 am '];
    case 5
        textcontent=[' 02 : 00 am - 02 : 29 am '];
    case 6
        textcontent=[' 02 : 30 am - 02 : 59 am '];
    case 7
        textcontent=[' 03 : 00 am - 03 : 29 am '];
    case 8
        textcontent=[' 03 : 30 am - 03 : 59 am '];
    case 9
        textcontent=[' 04 : 00 am - 04 : 29 am '];
    case 10
        textcontent=[' 04 : 30 am - 04 : 59 am '];
    case 11
        textcontent=[' 05 : 00 am - 05 : 29 am '];
    case 12
        textcontent=[' 05 : 30 am - 05 : 59 am '];
    case 13
        textcontent=[' 06 : 00 am - 06 : 29 am '];
    case 14
        textcontent=[' 06 : 30 am - 06 : 59 am '];
    case 15
        textcontent=[' 07 : 00 am - 07 : 29 am '];
    case 16
        textcontent=[' 07 : 30 am - 07 : 59 am '];
    case 17
        textcontent=[' 08 : 00 am - 08 : 29 am '];
    case 18
        textcontent=[' 08 : 30 am - 08 : 59 am '];
    case 19
        textcontent=[' 09 : 00 am - 09 : 29 am '];
    case 20
        textcontent=[' 09 : 30 am - 09 : 59 am '];
    case 21
        textcontent=[' 10 : 00 am - 10 : 29 am '];
    case 22
        textcontent=[' 10 : 30 am - 10 : 59 am '];
    case 23
        textcontent=[' 11 : 00 am - 11 : 29 am '];
    case 24
        textcontent=[' 11 : 30 am - 11 : 59 am '];
    case 25
        textcontent=[' 12 : 00 pm - 12 : 29 pm '];
    case 26
        textcontent=[' 12 : 30 pm - 12 : 59 pm '];
    case 27
        textcontent=[' 01 : 00 pm - 01 : 29 pm '];
    case 28
        textcontent=[' 01 : 30 pm - 01 : 59 pm '];
    case 29
        textcontent=[' 02 : 00 pm - 02 : 29 pm '];
    case 30
        textcontent=[' 02 : 29 pm - 02 : 59 pm '];
    case 31
        textcontent=[' 03 : 00 pm - 03 : 29 pm '];
    case 32
        textcontent=[' 03 : 30 pm - 03 : 59 pm '];
    case 33
        textcontent=[' 04 : 00 pm - 04 : 29 pm '];
    case 34
        textcontent=[' 04 : 30 pm - 04 : 59 pm '];
    case 35
        textcontent=[' 05 : 00 pm - 05 : 29 pm '];
    case 36
        textcontent=[' 05 : 30 pm - 05 : 59 pm '];
    case 37
        textcontent=[' 06 : 00 pm - 06 : 29 pm '];
    case 38
        textcontent=[' 06 : 30 pm - 06 : 59 pm '];
    case 39
        textcontent=[' 07 : 00 pm - 07 : 29 pm '];
    case 40
        textcontent=[' 07 : 30 pm - 07 : 59 pm '];
    case 41
        textcontent=[' 08 : 00 pm - 08 : 29 pm '];
    case 42
        textcontent=[' 08 : 30 pm - 08 : 59 pm '];
    case 43
        textcontent=[' 09 : 00 pm - 09 : 29 pm '];
    case 44
        textcontent=[' 09 : 30 pm - 09 : 59 pm '];
    case 45
        textcontent=[' 10 : 00 pm - 10 : 29 pm '];
    case 46
        textcontent=[' 10 : 30 pm - 10 : 59 pm '];
    case 47
        textcontent=[' 11 : 00 pm - 11 : 29 pm '];
    case 48
        textcontent=[' 11 : 30 pm - 11 : 59 pm '];
    
end
% inttime=idivide(int32(time),int32(2),'ceil');
% if inttime==(time/2)
%     textcontent=['' num2str(time/2) ' : 00 - ' num2str(time/2) ' : 29'];
% else 
%     textcontent=['' num2str(time/2) ' : 30 - ' num2str(time/2) ' : 59'];
% end
text(-74.01, 40.792, textcontent, 'Color', [1,1,1]);

x=[30 30.1];
y=[-60 -61];
h=zeros(2,1);
h(1)=plot(x, y,'LineWidth',3,'Color',G);
h(2)=plot(x, y,'LineWidth',3,'Color',BG);
h(3)=plot(x, y,'LineWidth',3,'Color',B);
h(4)=plot(x, y,'LineWidth',3,'Color',PB);
h(5)=plot(x, y,'LineWidth',3,'Color',P);
h(6)=plot(x, y,'LineWidth',3,'Color',RP);
%set(hleg1, 'Position', [-74.005,-74, 40.792,40.8]);
hleg1=legend(h,'25<speed       mph','20<speed<25 mph','15<speed<20 mph','10<speed<15 mph','  5<speed<10 mph','      speed< 5 mph');
%set(hleg1, 'Position', [0.65,.15,.11,.17]); %maximized window
set(hleg1, 'Position', [0.73,.18,.11,.17]);
set(hleg1,'TextColor',[1,1,1])
%set(hleg1,'TextColor',[180,180,180]/256)

%save plot

%set(gca,'Color',[0.0 0.0 0.0])
%set(gcf, 'InvertHardCopy', 'off');

filename=['t ' num2str(time)''];
saveas(gcf,filename,'png')

end
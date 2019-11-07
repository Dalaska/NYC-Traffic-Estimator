% plot speed through a day

    roadID=15979;
    selectSpeed=edgeSpeed(roadID,:,3); 
    selectNumber=edgeSpeed(15979,:,2);
    selectStd=edgeSpeed(15979,:,4);
    time=[1:48];
    figure
   % plot(time,selectSpeed,'--bo',time,selectStd,'r')
    plot(time,selectSpeed,'--bo')
   axis([0 36 0 48])
    hold on
    
 


y1 = selectStd;
y2 = selectNumber;

hold on
%[AX,H1,H2] = plotyy(time,y1,time,y2,'plot');
[AX,H1,H2] = plotyy(time,y1,time,y2,'plot');
plot(time,y1,'-.r*')

set(get(AX(1),'Ylabel'),'String','Speed (m/h)') 
set(get(AX(2),'Ylabel'),'String','Number of Data Collected')

xlabel('Time ') 
title('    Road Speed At Different Times Of A Day  ')

set(H1,'Color','red')
%set(H1,'Color','blue','LineStyle','--o')
%set(H2,'Color','green','LineStyle',':')

x = 2002:1:2012;
y1 = manufacturingSale;
y2 = afterTaxProfit;
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot');

%plot(manufacturingSale);
% hold all
%plot(afterTaxProfit);

set(get(AX(1),'Ylabel'),'String','Manufacturing Sale (million dollars)') 
set(get(AX(2),'Ylabel'),'String','After Tax Profit (million dollars)')

xlabel('Time(year) ') 
title('    U.S. Manufacturing Corporations - Sales and Net Income After Tax')

set(H1,'Color','red','LineStyle','--')
set(H2,'LineStyle',':')

%text('source: www.data.gov')
%text('Notes: We can see when 2008 economic crisis happened, profits dropped before sales')

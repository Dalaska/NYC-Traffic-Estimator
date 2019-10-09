%plot testing
%set(gcf, 'Color', [0 0 0]); % white bckgr
%saveas( gcf, 'DemoPlot', 'png' );
h=figure;
% saveas(h,name,'fig')
% saveas(h,name,'jpg')

set(gca,'Color',[0.5 0.5 0.5])
set(gcf, 'InvertHardCopy', 'off');
drawnow
jFrame = get(handle(gcf),'JavaFrame'); 
jFrame.setMaximized(true);
saveas(gcf,'test2','png')
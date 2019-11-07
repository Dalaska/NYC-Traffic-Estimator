% load file test

%-------------keep
% filename='simpledata';
% load(filename,'-mat')
% 
% savename=['d ' num2str(a)''];
% save(savename,'simpledata')
% clearvars -except simpledata filename %clear except
%-------------keep

tic
x = 0;
for i = 1:100000
  % x = x + i;
  d=min([1 2 3 4]);
end
toc


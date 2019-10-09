tic
x=0
for n=1:10000
    x=1;
end
toc

tic
x=0
parfor n=1:10000
    x=1;
end
toc
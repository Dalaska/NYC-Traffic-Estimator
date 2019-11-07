csize=size(coordinates);
plot (coordinates(1,3),coordinates(1,2),'*');
hold
for counter=1:csize(1)
plot(coordinates(counter,3),(coordinates(counter,2)),'*');
end
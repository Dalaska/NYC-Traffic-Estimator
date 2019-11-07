%import data from csv
for counter=11:11;
filename=['trip_data_1_' num2str(counter) '.csv']
A = importdata(filename);
dataSize=size(A.data,1);
imported=cell(dataSize,9);
for counter2=1:dataSize
    imported(counter2,1)=A.textdata(counter2,6); %pickup time
    imported(counter2,2)=A.textdata(counter2,7); %dropoff time
    imported(counter2,3)={A.data(counter2,1)}; %#of passenger
    imported(counter2,4)={A.data(counter2,2)}; % trip time
    imported(counter2,5)={A.data(counter2,3)}; % trip distance
    imported(counter2,6)={A.data(counter2,4)}; % pickup location
    imported(counter2,7)={A.data(counter2,5)}; 
    imported(counter2,8)={A.data(counter2,6)}; % dropoff location
    imported(counter2,9)={A.data(counter2,7)};
end

savename1=['trip100k_0' num2str(counter) ''];
save(savename1,'imported');

end
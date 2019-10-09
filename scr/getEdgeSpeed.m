function [ edgeSpeed ] = getEdgeSpeed2( edgeCell )
% summary of road segment speed 
%1.edge number, 2 number of element 3. media, 4 standard deviateion

edgeSpeed=zeros(44649,48,4); %initilize edgeSpeed

for rowCounter=1:44649
    for columnCounter=1:48
        if isempty(edgeCell{rowCounter,columnCounter})
 
        edgeSpeed(rowCounter,columnCounter,1)=0;
        edgeSpeed(rowCounter,columnCounter,4)=-1;

        else

        n = numel(edgeCell{rowCounter,columnCounter});
        M = mean(edgeCell{rowCounter,columnCounter});
        st = std2(edgeCell{rowCounter,columnCounter});

        edgeSpeed(rowCounter,columnCounter,1)=1;
        edgeSpeed(rowCounter,columnCounter,2)=n;
        edgeSpeed(rowCounter,columnCounter,3)=M;
        edgeSpeed(rowCounter,columnCounter,4)=st;
        end
    end
end

%nonzeroEdgeSpeed = nnz(edgeSpeed(:,2)) % number of nonzero edge speed.

%non zero element of edgeSpeed
% non0edgeSpeed=zeros(3,4);
% esSize=size(edgeSpeed); 
% non0counter=1;
% for counter=1:esSize(1)
%     if edgeSpeed(counter,2)~=0
%         non0edgeSpeed(non0counter,:)=edgeSpeed(counter,:);
%         non0counter=non0counter+1;
%     end
% end

% [xds] = datastats(non0edgeSpeed(:,2))
% figure(1)
% hist(edgeSpeed(:,:,3),50)
% figure(2)
% hist(non0edgeSpeed(:,3),50)
% figure(3)
% hist(non0edgeSpeed(:,4),50)
end

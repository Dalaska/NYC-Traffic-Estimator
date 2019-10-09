function [ edgespath ] = searchEdgePath( path,edgeData )
%search edge path
    edgespath=0;
    psize=size(path,2); %psize is the size of vertices path
    for counter=1:(psize-1)
        edges(counter,1)=path(counter);
        edges(counter,2)=path(counter+1); 
        %m=ismember(edgeData(:,3:4),edges(counter,:),'rows')'; % find the edge index
        [ index ] = findMember( edges(counter,:),edgeData(:,3:4));
        %index=find(m);% m is edge index
        edgespath(counter)=index;  
    end
    
    

end


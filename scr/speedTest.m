edgeCell={1;3}  
speed=60
epSize=size(edgePath);
    for counter=1:epSize
        edgeCell{edgePath(counter)}=[edgeCell{edgePath(counter)},speed]
    end

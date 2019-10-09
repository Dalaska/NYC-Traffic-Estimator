function [ dist_mile,edgePath,segmentflag ] = tripDistance ( pickupPoint,dropoffPoint,edgeData,vertexData,DG)
% estimatetripdistance

segmentflag=0;
dist=0;
path=0;
% find pickup road segment
[ pickupSegment ] = findSegment3( pickupPoint,vertexData,edgeData ); 
if (pickupSegment==0)
   % fprintf('cannot find pick up segment\n');
    segmentflag=1;
end

[ dropoffSegment ] = findSegment3( dropoffPoint,vertexData,edgeData ); 
if (dropoffSegment==0)
   % fprintf('cannot find drop-off segment\n');
    segmentflag=1;
end

if segmentflag==0     
    
    p1=edgeData(pickupSegment,3);
    p2=edgeData(pickupSegment,4);
    p3=edgeData(dropoffSegment,3);
    p4=edgeData(dropoffSegment,4);

     %both are oneway
    if  (edgeData(pickupSegment,6)==1)&&(edgeData(dropoffSegment,6)==1)  
            [d3,path1] = graphshortestpath(DG,p2,p3);
            % [ distance_meter ] = gpsDistance( lat1,long1,lat2,long2 )          
            [ d2 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p2,3),vertexData(p2,2));
            [ d4 ] = gpsDistance( vertexData(p3,3),vertexData(p3,2),dropoffPoint(2),dropoffPoint(1));
            dist= d2 + d3 + d4;
             path=path1;
        % first road segment is oneway; second  is two-way
        else if(edgeData(pickupSegment,6)==1)&&(edgeData(dropoffSegment,6)==0)
                 [d3,path1] = graphshortestpath(DG,p2,p3);
                 [ d2 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p2,3),vertexData(p2,2));
                 [ d4 ] = gpsDistance( vertexData(p3,3),vertexData(p3,2),dropoffPoint(2),dropoffPoint(1));
                 dist1= d2 + d3 + d4;
             
                 [d6,path2] = graphshortestpath(DG,p2,p4);
                 [ d2 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p2,3),vertexData(p2,2));
                 [ d5 ] = gpsDistance( vertexData(p4,3),vertexData(p4,2),dropoffPoint(2),dropoffPoint(1));
                 dist2= d2 + d6 + d5;
                 
                    if dist1 > dist2
                        dist = dist2;
                        path = path2;
                    else 
                        dist = dist1;
                        path = path1;
                    end
            % first road segment is two way second one is one way
            else if (edgeData(pickupSegment,6)==0)&&(edgeData(dropoffSegment,6)==1)
                    [d3,path1] = graphshortestpath(DG,p2,p3);
                    [ d2 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p2,3),vertexData(p2,2));
                    [ d4 ] = gpsDistance( vertexData(p3,3),vertexData(p3,2),dropoffPoint(2),dropoffPoint(1));
                     dist1= d2 + d3 + d4;
                     
                    [d7,path3] = graphshortestpath(DG,p1,p3);
                    [ d1 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p1,3),vertexData(p1,2));
                    [ d4 ] = gpsDistance( vertexData(p3,3),vertexData(p3,2),dropoffPoint(2),dropoffPoint(1));
                     dist3= d1 + d7 + d4;
                     
                     if dist1 > dist3
                        dist = dist3;
                        path = path3;
                     else
                         dist = dist1;
                         path = path1;
                     end
                %both segments are two way    
                else if (edgeData(pickupSegment,6)==0)&&(edgeData(dropoffSegment,6)==0)
                        [d3,path1] = graphshortestpath(DG,p2,p3);
                        [ d2 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p2,3),vertexData(p2,2));
                        [ d4 ] = gpsDistance( vertexData(p3,3),vertexData(p3,2),dropoffPoint(2),dropoffPoint(1));
                        dist1= d2 + d3 + d4;
                        
                        [d6,path2] = graphshortestpath(DG,p2,p4);
                        [ d2 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p2,3),vertexData(p2,2));
                        [ d5 ] = gpsDistance( vertexData(p4,3),vertexData(p4,2),dropoffPoint(2),dropoffPoint(1));
                        dist2= d2 + d6 + d5;
                        
                        [d7,path3] = graphshortestpath(DG,p1,p3);
                        [ d1 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p1,3),vertexData(p1,2));
                        [ d4 ] = gpsDistance( vertexData(p3,3),vertexData(p3,2),dropoffPoint(2),dropoffPoint(1));
                         dist3= d1 + d7 + d4;
                         
                        [d8,path4] = graphshortestpath(DG,p1,p4);
                        [ d1 ] = gpsDistance( pickupPoint(2),pickupPoint(1),vertexData(p1,3),vertexData(p1,2));
                        [ d5 ] = gpsDistance( vertexData(p4,3),vertexData(p4,2),dropoffPoint(2),dropoffPoint(1));
                         dist4= d1 + d8 + d5;
                         
                         [dist,i]=min([dist1,dist2,dist3,dist4]);
                         if(i==1)
                         path=path1;
                            else if(i==2) 
                            path=path2;
                                else if(i==3)
                                path=path3;
                                     else path=path4;
                                    end
                                end
                         end
                    end
                end
            end
    end
end
 dist_mile=dist*0.621371/1000;                        
[ edgePath ] = searchEdgePath( path,edgeData );
% find the coordinate of vertice
%[ coordinates ] = SearchCrdnts( path,vertexData ); 
end
function [ segment ] = findSegment3( point,vertexData,edgeData )
% find in which  where the point is located at

segment=0; %initialize segment
segmentCandidate=0;
CandidateDist=10;
segmentCurrent=0;
inSize=28751;


for counter=1 : inSize


    
    firstX=vertexData(edgeData(counter,3),2);
    firstY=vertexData(edgeData(counter,3),3);
    secondX=vertexData(edgeData(counter,4),2);
    secondY=vertexData(edgeData(counter,4),3);
    
    Xmax=max(firstX,secondX);
    Xmin=min(firstX,secondX);
    
    Ymax=max(firstY,secondY);
    Ymin=min(firstY,secondY);
    
%  if the point is in the rectangular range   
    segmentTolerance=0;
   if point(1)>(Xmin-segmentTolerance)
       if  point(1)<(Xmax+segmentTolerance)
           if point(2)>(Ymin-segmentTolerance)
               if  point(2)<(Ymax+segmentTolerance)

                    segmentCurrent =counter;

                    % distance from point to road
                    v1=[firstX,firstY,0];
                    v2=[secondX,secondY,0];
                    pt=[point,0];

                    a = v1 - v2;
                    b = pt - v2;
                    d = norm(cross(a,b))/ norm(a);
                    
                    % plot road segment 
%                     latitudeP=[vertexData(edgeData(segmentCurrent,3),2),vertexData(edgeData(segmentCurrent,4),2)];
%                     longitudeP=[vertexData(edgeData(segmentCurrent,3),3),vertexData(edgeData(segmentCurrent,4),3)];
%                     plot(latitudeP,longitudeP,'LineWidth',1,'Color','r');
                    
                    
                    
                    if d<CandidateDist
                        segmentCandidate=segmentCurrent;
                        CandidateDist=d;
                    end
                    
                    if d<5e-05 %accept directly
                        break;
                    end
                    
               end
           end
       end
   end
                  
end
    segment= segmentCandidate;



end


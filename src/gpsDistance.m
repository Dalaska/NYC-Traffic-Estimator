function [ distance_m ] = gpsDistance( lat1,long1,lat2,long2 )
%distance of two points

format long         % Switch to long format decimal display


[rows,cols]=size(lat1); % Gets number of data points ans store in rows
[rows2,cols]=size(long2); % Gets number of data points ans store in rows2

% Make sure all the matrices have same number of rows

if (rows==rows2)
    
    % Initialize vectors and set all cells to zeros
    angle1 = zeros(rows,1); 
    angle2 = zeros(rows,1);
    r1 = zeros(rows,1); 
    r2 = zeros(rows,1);
    xy1= zeros(rows,1); 
    xy2= zeros(rows,1);
    xy3= zeros(rows,1); 
    xy4= zeros(rows,1);
    X= zeros(rows,1); 
    Y= zeros(rows,1);
    distance_m=zeros(rows,1); 
    distance_ft=zeros(rows,1);

    maj_const=6378137;          %Major axis constant
    min_const=6356752.3142;     %Minor axis constant
    %h=334.9;                    %Elevation
    h=23; 
    
    for i=1:rows
        % True angle determination (atan=ArcTan)
        angle1(i,1)=(atan((min_const^2)/(maj_const^2)*tan(lat1(i,1)*pi()/180)))*180/pi();
        angle2(i,1)=(atan((min_const^2)/(maj_const^2)*tan(lat2(i,1)*pi()/180)))*180/pi();
   
        % Radius calculation for the two points
        r1(i,1)=(1/((cos(angle1(i,1)*pi()/180))^2/maj_const^2+(sin(angle1(i,1)*pi()/180))^2/min_const^2))^0.5+h;
        r2(i,1)=(1/((cos(angle2(i,1)*pi()/180))^2/maj_const^2+(sin(angle2(i,1)*pi()/180))^2/min_const^2))^0.5+h;
  
        % X-Y earth coordinates
        xy1(i,1)=r1(i,1)*cos(angle1(i,1)*pi()/180);
        xy2(i,1)=r2(i,1)*cos(angle2(i,1)*pi()/180);
        xy3(i,1)=r1(i,1)*sin(angle1(i,1)*pi()/180);
        xy4(i,1)=r2(i,1)*sin(angle2(i,1)*pi()/180);
   
        X(i,1)=((xy1(i,1)-xy2(i,1))^2+(xy3(i,1)-xy4(i,1))^2)^0.5;         % X coordinate
        Y(i,1)=2*pi()*((((xy1(i,1)+xy2(i,1))/2))/360)*(long1(i,1)-long2(i,1));     % Y coordinate

        format short                             % Switch to short format

        distance_m(i,1)=((X(i,1))^2+(Y(i,1))^2)^0.5;                    % Distance Meter
        
        %distance_ft(i,1)= distance_m(i,1)*3.28084;                    % Distance feet

    end
else
    display('.........Lat1 and Lat2 rows are not equal...........');
end
% k1=1.233428813763977e+10;
% k2=7.128141170231164e+09;
% distance_m=k1*(lat1-lat2)^2+k2*(long1-long2)^2;

end


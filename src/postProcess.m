% post process
% sectionFlag which part of code to run
sectionFlag=0;

if sectionFlag==0
    % selecti data
    selectTrip=zeros(100,4);
    unzeroCounter=1;
    %adjsutFactor=1.015;
    for counter=1:100001
        if tripNew(counter,1)==0
            recorded=tripNew(counter,3);
            estimated=tripNew(counter,9);
            error=(recorded-estimated)/recorded;
            if (error>-0.1)&&(error<0.1)
            %if (error>-0.1)&&(error<0.1)
                selectTrip(unzeroCounter,1)=recorded;
                selectTrip(unzeroCounter,2)=estimated;
                %selectTrip(unzeroCounter,3)=estimated*adjsutFactor;
                selectTrip(unzeroCounter,3)=error;
                unzeroCounter=unzeroCounter+1;
            end
        end
    end
   %estimated
   figure
   scatter(selectTrip(:,1),selectTrip(:,2),1);
   hold
   x=[0,12];
   y=[0,12];
   plot(x,y,'r');
   axis equal
   axis([ 0 11 0 11])
   title('Estimated Distance')
   %title('Estimated Distance After Filtered')
   xlabel('Recorded Distance (miles)')
   ylabel('Estimated Distance (miles)')
   f = fit( selectTrip(:,2), selectTrip(:,1), 'a*x','StartPoint', [1])

   % probability distribution
   figure
   xvalues3=linspace(-100.,100.,101);
   hist(selectTrip(:,3)*100,xvalues3)
   axis([ -100 100 0 8000])
   xlabel('Error %')
   ylabel('Number of Data')
   title(' Probability Distribution of Trip Distance Error')
end


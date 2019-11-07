function [ trip ] = selectDistance( trip)

inSize=size(trip,1);

    for counter=1:inSize
        if trip(counter,1)==0
                recorded=trip(counter,3);
                estimated=trip(counter,9);
                error=(recorded-estimated)/recorded;
                % distance critiera
                if (error<-0.05)||(error>0.05)
                    trip(counter,1)=3;
                end
        end
    end
end
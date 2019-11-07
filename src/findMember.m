function [ index ] = findMember( small,big)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
counter=1;
flag=0;
while (flag==0)
    if(small(1)==big(counter,1))
        if(small(2)==big(counter,2))
            flag=1;
        end
    end
    counter=counter+1;
end

index=counter-1;
end  
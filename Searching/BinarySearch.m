%Binary search
array = [3,6,8,14,17,25,29,31,36,42,47,53,55,62];
target=8;
found = false;
low=array(1);
high = length(array);

while low<=high
    mid = floor((low+high)/2);

    if array(mid) == target
        found=true;
        index = mid;
        break
    else
       if target< array(mid)
           high=mid-1;
       else
           low = mid+ 1;
       end
    end
end
if found
    fprintf ('Element found at the index : %d \n', index)
else
    disp("Element not found!")
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Output:
>> BinarySearch
Element found at the index : 3 

%Linear search
tic;
arr=[3 5 7 9 11 13];
target=9;
n=length(arr);
found=false;

for i=1:n
    if arr(i)==target
        found=true;
        index=i;
        break;
    end
end

if found
    fprintf("%dth index\n", index);
else
    disp("Element is not found\n");
end

elaspsedTime=toc;   %end timing and store elapsed time
fprintf('Elapsed Time: %f seconds\n', elaspsedTime);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Output:
>> LinearSearch
4th index
Elapsed Time: 0.046690 seconds

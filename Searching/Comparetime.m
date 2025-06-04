arr = 1:1000;

target = 100;

%Linear
tic;
found_linear = false;
for i = 1:length(arr)
    if arr(i) == target
        found_linear = true;
        break;
    end
end
time_linear = toc;


sorted_data = sort(arr);

%Binary
tic;
left = 1;
right = length(sorted_data);
found_binary = false;
while left <= right
    mid = floor((left + right) / 2);
    if sorted_data(mid) == target
        found_binary = true;
        break;
    elseif sorted_data(mid) < target
        left = mid + 1;
    else
        right = mid - 1;
    end
end
time_binary = toc;

fprintf('Linear Search Time: %.8f seconds\n', time_linear);
fprintf('Binary Search Time: %.8f seconds\n', time_binary);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Output:
>> Comparetime
Linear Search Time: 0.05924760 seconds
Binary Search Time: 0.07557640 seconds

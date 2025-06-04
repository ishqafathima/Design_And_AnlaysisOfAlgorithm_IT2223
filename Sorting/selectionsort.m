array=[64,25,12,22,11];
disp("Original array" );
disp(array);
% Selection Sort Algorithm
n = length(array);
for i = 1:n-1
    minIndex = i;  % Assume the minimum is at index i
    for j = i+1:n
        if array(j) < array(minIndex) %compare the min value to the index j
            minIndex = j;  % Update index of minimum element
        end
    end
    % Swap elements if a smaller element was found
    if minIndex ~= i
        temp = array(i);
        array(i) = array(minIndex);
        array(minIndex) = temp;
    end
end

disp('Sorted Array:');
disp(array);
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Output:
selectionsort
Original array
    64    25    12    22    11

Sorted Array:
    11    12    22    25    64


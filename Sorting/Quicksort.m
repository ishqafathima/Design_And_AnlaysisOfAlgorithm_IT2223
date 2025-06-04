%quicksort
%Arr=1,2,5,8,7;

Arr = [1, 2, 5, 8, 7];
disp("Original Array:");
disp(Arr);

sortedArr = QuickSort(Arr);

disp("Sorted Array:");
disp(sortedArr);

function sortedArray = QuickSort(Arr)
    n = length(Arr);
    if n <= 1
        sortedArray = Arr;
        return;
    end
    
    pivot = Arr(1);
    left = Arr(Arr < pivot);
    right = Arr(Arr > pivot);
    middle = Arr(Arr == pivot);
    
    sortedArray = [QuickSort(left), middle, QuickSort(right)];
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Output:
>> Quicksort
Original Array:
     1     2     5     8     7

Sorted Array:
     1     2     5     7     8

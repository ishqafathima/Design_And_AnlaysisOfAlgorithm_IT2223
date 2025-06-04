%merge sort
%[8,3,5,1,7,2]

Arr=[8,3,5,1,7,2];
disp("Original Array");
disp(Arr);
SortedArray = MergeSort(Arr);
disp("Sorted Array:");
disp(SortedArray);

%n=length(Arr);
function sortedArray = MergeSort(Arr)
    if length(Arr) <= 1
        sortedArray = Arr;
        return;
    end
    
    mid = floor(length(Arr) / 2);
    leftHalf = MergeSort(Arr(1:mid));
    rightHalf = MergeSort(Arr(mid+1:end));
    
    sortedArray = Merge(leftHalf, rightHalf);
end

function mergedArrray = Merge(leftArr, rightArr)
    mergedArrray = [];
    while ~isempty(leftArr) && ~isempty(rightArr)
        if leftArr(1) <= rightArr(1)
            mergedArrray = [mergedArrray, leftArr(1)];
            leftArr(1) = [];
        else
            mergedArrray = [mergedArrray, rightArr(1)];
            rightArr(1) = [];
        end
    end
    mergedArrray = [mergedArrray, leftArr, rightArr];
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Output:
>> mergedArrray
Original Array
     8     3     5     1     7     2

Sorted Array:
     1     2     3     5     7     8

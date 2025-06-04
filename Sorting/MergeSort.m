%merge sort
%[8,3,5,1,7,2]
Arr=[8,3,5,1,7,2];
disp("Original Array");
disp(Arr);

n=length(Arr);
function sortedArray = MergeSort(arr)
    if length(arr) <= 1
        sortedArray = Arr;
        return;
    end
    
    mid = floor(length(arr) / 2);
    leftHalf = MergeSort(arr(1:mid));
    rightHalf = MergeSort(arr(mid+1:end));
    
    sortedArray = Merge(leftHalf, rightHalf);
end

function mergedArray = Merge(leftArr, rightArr)
    mergedArray = [];
    while ~isempty(leftArr) && ~isempty(rightArr)
        if leftArr(1) <= rightArr(1)
            mergedArray = [mergedArray, leftArr(1)];
            leftArr(1) = [];
        else
            mergedArray = [mergedArray, rightArr(1)];
            rightArr(1) = [];
        end
    end
    mergedArray = [mergedArray, leftArr, rightArr];
end

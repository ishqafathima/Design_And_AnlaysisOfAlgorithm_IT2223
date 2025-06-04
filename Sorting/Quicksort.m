%quicksort
%Arr=1,2,5,8,7;

Arr=[1,2,5,8,7];
disp("Original Array");
disp(Arr);
n=length(Arr);
funcion sortedArray = QuickSort(Arr)
if n <=1
  sortedArray =Arr;
  return ;
end

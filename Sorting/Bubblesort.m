%Bubble sort
%Repeatedly compare adjacent elements and swap if wrong order
%largest value "bubbles" to the end
Arr=[64,25,12,22,11,90];

disp("Original Arrray ");
disp(Arr);
n=length(Arr);
%Bubble sort
for i = 1:n-1
    for j=1:n-i
     if Arr(j) > Arr(j+1)
         %swap elements
         temp = Arr(j);
         Arr(j)=Arr(j+1);
         Arr(j+1)=temp;
         
     end
    end
end

disp("Sorted Array");
disp(Arr);



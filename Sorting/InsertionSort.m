Arrr=[5,4,10,1,6,2];

disp("Original Array");
disp(Arrr);
n=length(Arrr);

for i = 2:n
    key = Arrr(i);
    j = i - 1;
    
    while j > 0 && Arrr(j) > key
        Arrr(j + 1) = Arrr(j);
        j = j - 1;
    end
    Arrr(j + 1) = key;
end
    


disp("Sorted Array");
disp(Arrr);

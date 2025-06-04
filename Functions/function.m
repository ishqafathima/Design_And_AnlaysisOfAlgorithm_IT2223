1.% Function Definition
function sum = addNumbers(x, y)
    sum = x + y;
end

------------------------------------------------

Output:
>> addNumbers(3,4)

ans =

     7

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2.
%function  sum=addNumbers(x,y)
%sum=x+y;
%end
%type functions(4,2)
%type operations(3,2)

%simple calculator
function [add,sub,mul]=operations(a,b)
        add=a+b;
        sub=a-b;
        mul=a*b;
end

%[add,sub,mul]=operations(5,3)

--------------------------------------------------------------------

Output:
[add,sub,mul]=operations(5,3)

add =

     8


sub =

     2


mul =

    15

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.
%greet
function greet(name)
disp(['Hello ',name])
end

-----------------------------------------------------------

Output:
>> greet('ish')
Hello ish

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

4.
%pivalue
function piValue=getPi()
pivalue=3.1416;
end

------------------------------------------------------------

Output:
>> getPi()

ans =

    3.1416
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

5.
%dispaly message only
function myFunction()
disp('hello, this function has no inputs');
end

---------------------------------------------------------------

Output:
>> myFunction
hello, this function has no inputs

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

6.
%without function factorial
num = input("Enter a number: ");

if num<0 
    disp("Factorial is not defined for negative numbers");


elseif num==0 || num==1
 
    disp('Facorial is  1')     
 
else 
   
        fact = 1;
        for i=1:num
            fact = fact*i;
        end

        fprintf('Factorail of %d is %d\n' ,num,fact);
     
end

---------------------------------------------------------------------------------

Output:

>> factorial
Enter a number: 5
Factorail of 5 is 120

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


7.
%factorial recursive
function result = factorialRecursiv(n)
    if n < 0
        error('Factorial is not defined for negative numbers.');
    elseif n == 0 || n == 1
        result = 1;
    else
        result = n * factorialRecursiv(n - 1);
    end
end

% User Input
n = input('Enter a number: ');

% Call the function and store the result
factorialResult = factorialRecursiv(n);

% Display the result
fprintf('Factorial of %d is %d\n', n, factorialResult);

-------------------------------------------------------------------------------------

Output:
>> FactorialRecursive
Enter a number: 4
Factorial of 4 is 24








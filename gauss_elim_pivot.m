clear all
clc
%%Inititalisation
n = input('Enter the no. of variables: ');
matrix = zeros(n,n+1);
%Taking input for all coeeficients
for i = 1:n
    disp('Enter the coefficients: ');
    for j = 1:n+1
        matrix(i,j) = input('Enter the number: \n');
    end
end
disp('THis is the original matrix:');
disp(matrix);
%% Selecting the pivot
%Make sure the pivot is not zero
for i = 1:n
    a = zeros(1,n+1);
    b = zeros(1,n+1);
    %c = zeros(1,n+1);
    if matrix(i,i) == 0
        for j = 2:n
            if matrix(i,i) == 0
                %Swapping rows
                a = matrix(i,:);
                b = matrix(j,:);
                matrix(i,:) = b;
                matrix(j,:) = a;
            end
        end
    end
end
disp('Matrix with proper pivot values');
disp(matrix);
%% Let's strat pivoting
for i = 1:n
    pivot = matrix(i,i);
    for j = i+1:n
        if matrix(i,j) == 0
        else
            ratio = pivot/matrix(j,i); %Assigning the ration
            a = matrix(i,:); % Storing the pivot row
            b = matrix(j,:); % Storing the subsequent row
            matrix(j,:) = ratio*b - a; % Making the coloumn as zero
        end
    end
    % Make the pivot element as 1
    matrix(i,:) = matrix(i,:)/pivot;
end
disp('The augmented matrix: ');
disp(matrix);
%% Finding solutions
if isnan(matrix(end,1)) == 1
    disp('The system of linear equations has no or infinite solutions.');
else
    sol = zeros(1,n);
    for i = n:-1:1
        z = matrix(i,1:n).* sol(1:n);
        s = sum(z);
        sol(i) = matrix(i,end) - s;
    end
    disp('Solution: ');
    disp(sol);
end

























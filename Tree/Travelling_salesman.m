% Distance matrix
dist = [
    0 10 15 20;
    10 0 35 25;
    15 35 0 30;
    20 25 30 0    
];

% Generate all possible permutations of cities 2, 3, 4 (start is fixed at 1)
allperms = perms([2 3 4]);

% Sort the permutations (optional)
sortedperms = sortrows(allperms);

% Initialize variables
minDist = inf;
bestpath = [];

% Iterate over all permutations
for i = 1:size(sortedperms, 1)
    currentPerm = sortedperms(i, :);
    
    % Add starting city (1) to the beginning and end to make a complete loop
    fullPath = [1 currentPerm 1];
    
    % Calculate distance of this path
    currentDist = 0;
    for j = 1:length(fullPath)-1
        currentDist = currentDist + dist(fullPath(j), fullPath(j+1));
    end
    
    % Update minimum distance and best path if needed
    if currentDist < minDist
        minDist = currentDist;
        bestpath = fullPath;
    end
end

% Display the result
disp(['Minimum distance: ', num2str(minDist)]);
disp(['Best path: ', num2str(bestpath)]);
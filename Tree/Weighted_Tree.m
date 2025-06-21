% Unique node names
nodes = {'A' , 'B' , 'C' , 'D' , 'E', 'F', 'G'};

% Define edges using source and target node indices
s = [1 1 2 2 3 3]; % from (source)
t = [2 3 4 5 6 7]; % to (target)

% Define edge weights
weights = [5 3 2 4 6 1];

% Create directed graph with weights and named nodes
G = digraph(s, t, weights, nodes);

% Plot the graph with layered layout, direction downward, and edge weights labeled
plot(G, 'Layout', 'layered', 'Direction', 'down', 'EdgeLabel', G.Edges.Weight);
title('Simple Tree with 3 Levels');
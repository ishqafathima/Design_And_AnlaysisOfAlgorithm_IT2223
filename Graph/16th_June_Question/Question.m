
% Source and destination arrays
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

% Create a graph object
G = graph(source, destination);


figure;
plot(G);
title('Graph Representation');


% Define the nodes for subgraph
sub_nodes = [2, 3, 4];

% Extract and display the subgraph
subG = subgraph(G, sub_nodes);

% Plot subgraph
figure;
plot(subG);
title('Subgraph for Nodes [2, 3, 4]');


disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    adjNodes = neighbors(G, i);
    fprintf('Node %d: [%s]\n', i, num2str(adjNodes'));
end

% Optional: create edge labels (e.g., weights or indexes)
edgeLabels = arrayfun(@(x) sprintf('E%d', x), 1:numedges(G), 'UniformOutput', false);

% Plot with edge labels
figure;
p = plot(G);
labeledge(p, 1:numedges(G), edgeLabels);
title('Graph with Edge Labels');


figure;
p = plot(G);
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));
title('Graph with Node Labels');

% Use a greedy coloring algorithm
nodeColors = zeros(1, numnodes(G));
for i = 1:numnodes(G)
    neighborsColors = nodeColors(neighbors(G, i));
    color = 1;
    while any(neighborsColors == color)
        color = color + 1;
    end
    nodeColors(i) = color;
end

% Display colored graph
figure;
p = plot(G);
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));
p.NodeCData = nodeColors;
colorbar;
title('Graph Coloring');


% Shortest path from node 1 to node 5
[spath, d] = shortestpath(G, 1, 5);

% Display result
fprintf('Shortest path from node 1 to node 5: [%s] with distance %d\n', num2str(spath), d);

% Plot graph and highlight the shortest path
figure;
p = plot(G);
highlight(p, spath, 'EdgeColor', 'r', 'LineWidth', 2);
title('Shortest Path from Node 1 to Node 5');




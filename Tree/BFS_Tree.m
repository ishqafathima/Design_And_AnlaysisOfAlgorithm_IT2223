function visited = bfs(startNode, adjacencyMatrix)
    numNodes = size(adjacencyMatrix, 1);
    visited = false(1, numNodes);
    queue = [];  % Initialize queue

    fprintf('BFS traversal order: ');
    queue(end+1) = startNode;  % Enqueue start node
    visited(startNode) = true;

    while ~isempty(queue)
        node = queue(1);        % Dequeue the first node
        queue(1) = [];

        fprintf('%d->', node);  % Display visited node

        adjacentNodes = find(adjacencyMatrix(node, :) > 0);
        for i = 1:length(adjacentNodes)
            adjacentNode = adjacentNodes(i);
            if ~visited(adjacentNode)
                queue(end+1) = adjacentNode;  % Enqueue
                visited(adjacentNode) = true;
            end
        end
    end

    fprintf('\n');
end

% Define edges (source and target)
s = [1 2 2 3];       % A->B, A->C, B->D, B->E
t = [2 3 4 5];
weights = [3 7 8 4]; % Edge weights
names = {'A','B','C','D','E'};

% Create directed graph with weights and node names
G = digraph(s, t, weights, names);

% Plot the graph
figure;
plot(G, 'Layout', 'layered', 'Direction', 'down', 'EdgeLabel', G.Edges.Weight);
title('BFS Breadth-First Search Graph');

% Create binary adjacency matrix from the graph
adjacencyMatrix = adjacency(G) > 0;

% Start node for BFS
startNode = 1;

% Call BFS
visited = bfs(startNode, adjacencyMatrix);
function visited = dfs(startNode,adjacencyMatrix)
 numNodes=size(adjacencyMatrix,1);

 %no of rows in the matrix
 visited=false(1,numNodes);
 fprintf('DFS traversal order:');

 %Call the recursive dfs function
 visited=dfsRecursive(startNode,adjacencyMatrix,visited);

 %prints a newline at the end of the traversal output
 fprintf('\n');
end


function visited=dfsRecursive(node,adjacencyMatrix,visited)
visited(node)=true;
fprintf('%d->',node);
adjacentNodes=find(adjacencyMatrix(node,:)>0);

%Recursive call for each unvisited adjacency node
for i=1:length(adjacentNodes)
    adjacentNode=adjacentNodes(i);
    if~visited(adjacentNode)
        visited=dfsRecursive(adjacentNode,adjacencyMatrix,visited);
    end
end
end



%define edges using source and target nodes
s=[1 2 2 3]; %from A->B, A->C,, B->D, B->E, C
t=[2 3 4 5]; %To
weights=[3 7 8 4];
names={'A','B','C','D','E'};
%created directed graph

G=digraph(s,t,weights,names);

figure;
%plot the tree with edge weights displayed
plot(G,'Layout','layered','Direction','Down','EdgeLabel',G.Edges.Weight);
title('DFS depth First Search Graph');

%create binary adjaccency matrix 
adjacencyMatrix=adjacency(G)>0;

%Start node for DFS
startNode=1;

%Call DFS
visited = dfs(startNode,adjacencyMatrix);
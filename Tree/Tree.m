nodes = {'A' , 'B' , 'C' , 'D' , 'E', 'F', 'G'};  % Changed last 'F' to 'G'

s = [1 1 2 2 3 3]; % from nodes
t = [2 3 4 5 6 7]; % to nodes

G = digraph(s, t, [], nodes);

plot(G, 'Layout', 'layered', 'Direction', 'down');
title('Simple tree with 3 levels');
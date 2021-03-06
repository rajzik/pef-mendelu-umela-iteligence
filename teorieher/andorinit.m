global G;

G = digraph;

createNode(0, 20);

h = plot(G, 'Layout', 'layered');
h.NodeLabel = G.Nodes.pocetSirek;
h.EdgeLabel = G.Edges.Weight;

h.ShowArrows = 'on';

h.MarkerSize = 6;
highlight(h, find(G.Nodes.resitelnost), 'NodeColor', 'g');
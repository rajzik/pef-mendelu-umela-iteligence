
function [ Name, resitelnost ] = createNode(kdoHraje, pocetSirek)
%kdoHraje 0 OR UI
%kdoHraje 1 AND Person
global G;

Name = {num2str(numnodes(G) + 1)};

if (kdoHraje)
    typUzlu = {'AND'};
else
    typUzlu = {'OR'};
end

resitelnost = 0;
if (pocetSirek == 0)
    if (kdoHraje == 1) %protihrac
        resitelnost = 0; %prohra
    else
        resitelnost = 1; %prohra
    end
end

props = table(Name, resitelnost, typUzlu, pocetSirek);
G = addnode(G, props);

%% Konecna podminka
if (pocetSirek <= 0) 
    return;
end


%% Predavani veci
[ jmeno1, resitelnost1 ]= createNode(~kdoHraje, pocetSirek-1);
G = addedge(G, Name, jmeno1, -1);
if (pocetSirek >= 2)
    [ jmeno2, resitelnost2 ] = createNode(~kdoHraje, pocetSirek-2);
    G = addedge(G, Name, jmeno2, -2);
else
    resitelnost2 = kdoHraje;
end

%% Logika AND OR
if (kdoHraje == 1)
    resitelnost = resitelnost1 && resitelnost2;
else
    resitelnost = resitelnost1 || resitelnost2;
end
idx = findnode(G, Name);
G.Nodes.resitelnost(idx) = resitelnost;
end


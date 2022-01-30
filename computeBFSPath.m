function P = computeBFSPath(AdjTable, start, goal)
    parent=computeBFSTree(AdjTable, start);
    path=[goal];id=goal;n=length(parent);i=1;
    while path(1)~=start
        node=parent(id);
        path=[node,path];
        i=i+1;
        id=node;
        if i==n
            break;
        end
    end
    if path(1)~=start
        P=error('Path cannot be found');
    else
        P=path;
    end
end
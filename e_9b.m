function e_9b(dim, pct)
    load hald;

    y = heat;
    xs = [1:size(ingredients,2)];
    xUsed = [];

    corrmat = corrcoef(hald);
    [m i] = max(abs(corrmat(end,1:end-1)));
    xUsed = [xUsed i]
    xs = xs(xs~=i);

    minI = 0;
    while (length(xUsed)<dim)
        X = e_9b_X(xUsed, ingredients);
        currR = e_9b_res(X, y)*(1-pct);
        e_9b_res(X, y)
        minI = -1;
        for i=xs
            fprintf(1, 'probando para %d\n', i);
            R = e_9b_res([X ingredients(:,i)], y)
            if (R < currR) 
                currR = R;
                minI = i;
            end
        end

        if (minI == -1)
            break;
        end
        fprintf(1, 'la mejor opcion es: %d\n', minI);
        xUsed = [xUsed minI]
        xs = xs(xs~=minI);
    end
    e_9b_res(X, y)
    xUsed
end

function res = e_9b_res(X, y)
    residuos = regstats(y, X, 'linear', 'r');
    r = residuos.r;
    res = sum(r.^2);
end

function X = e_9b_X(xUsed, ingredients)

    X = [];
    for i=xUsed
        X = [X ingredients(:,i)];
    end
end
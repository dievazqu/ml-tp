function [model reg] = e_9b()
    load hald;

    % Como se interpretan estos resultados?
    [b,se,pval,inmodel,stats,nextstep,history] = stepwisefit(ingredients, heat);


    model = [stats.intercept; b(find(inmodel>0))];
    ing2 = ingredients(:,find(inmodel>0));
    ing2 = [ones(size(ing2,1), 1) ing2];

    % reg should be close to heat
    reg = ing2*model;
end
function e_10b()
    load hald;
    [Z mu sigma] = zscore(ingredients);
    [coeff score] = princomp(ingredients);
    biplot(score(:,1:2))
end
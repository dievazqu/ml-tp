function e_10b()
    load hald;
    [coeff score] = princomp(ingredients);
    biplot(coeff(:,1:2),'Scores',score(:,1:2),'VarLabels',...
        {'X1' 'X2' 'X3' 'X4'})
end
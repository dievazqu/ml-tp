function e_10a()
    load hald;
    [coeff score latent] = princomp(ingredients);
    score
    varexp = latent'/sum(latent)
end
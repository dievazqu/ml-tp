function e_10a()
    load hald;
    [coeff score latent] = princomp(ingredients);
    coeff
    varexp = latent'/sum(latent)
end
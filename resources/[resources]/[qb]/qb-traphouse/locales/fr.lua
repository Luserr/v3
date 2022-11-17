local Translations = {
    error = {
        not_enough = "Vous n'avez pas assez d'argent..",
        no_slots = "Il n'y a plus de slot libre",
        occured = "Une erreur est survenue",
        have_keys = "Cette personne a déjà les clefs",
        p_have_keys = "%{value} a déja les clefs",
        not_owner = "Vous ne possedez pas le lieu",
        not_online = "Cette personne n'est pas présente",
        no_money = "Il n'y a pas d'argent dans le stockage",
        incorrect_code = "Ce code n'est pas correct",
        up_to_6 = "Vous ne pouvez seulement donner accès qu'à 6 personnes!",
        cancelled = "Achat annulé",
    },
    success = {
        added = "%{value} a été ajoutée a ce lieu!",
    },
    info = {
        enter = "Entrer Traphouse",
        give_keys = "Donner les clefs de la Traphouse",
        pincode = "Code Pin Traphouse: %{value}",
        taking_over = "Récupération",
        pin_code_see = "~b~G~w~ - Voir Code Pin",
        pin_code = "Code Pin: %{value}",
        multikeys = "~b~/multikeys~w~ [id] - Pour donner les clefs",
        take_cash = "~b~E~w~ - Prendre l'argent (~g~$%{value}~w~)",
        inventory = "~b~H~w~ - Voir inventaire",
        take_over = "~b~E~w~ - Récupération (~g~$5000~w~)",
        leave = "~b~E~w~ - Quitter",
    }
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true
    })    
end


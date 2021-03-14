FactoryBot.define do
  factory :recipe do
    name { 'MyRecipe' }
    ingredients { '[]' }

    factory :recipe_with_sel_and_poivre1 do
      name { 'Pates aux beurre' }
      ingredients { '["pates", "beurre", "sel", "poivre"]' }
    end
    factory :recipe_with_sel_and_poivre2 do
      name { 'Riz aux beurre' }
      ingredients { '["riz", "beurre", "sel", "poivre"]' }
    end

    factory :recipe_with_sel_but_not_poivre do
      name { 'Pates' }
      ingredients { '["pates", "sel"]' }
    end

    factory :recipe_without_sel_and_poivre1 do
      name { 'Salade de fruits' }
      ingredients { '["pomme", "orange", "cerise"]' }
    end
    factory :recipe_without_sel_and_poivre2 do
      name { 'Banana split' }
      ingredients { '["Banane", "Chocolat"]' }
    end
  end
end

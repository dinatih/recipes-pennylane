require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe '.search_by_ingredients(str)' do
    before do
      FactoryBot.create :recipe_with_sel_and_poivre1
      FactoryBot.create :recipe_with_sel_and_poivre2

      FactoryBot.create :recipe_with_sel_but_not_poivre

      FactoryBot.create :recipe_without_sel_and_poivre1
      FactoryBot.create :recipe_without_sel_and_poivre2
    end

    it 'returns recipes with at least str\'s ingredients' do
      recipes = described_class.search_by_ingredients('sel, poivre')

      expect(recipes.count).to be(2)
      recipes.each do |r|
        expect(r.ingredients).to include('sel')
        expect(r.ingredients).to include('poivre')
      end
    end
  end
end

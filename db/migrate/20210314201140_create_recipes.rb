class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.string :prep_time
      t.string :cook_time
      t.string :total_time
      t.integer :people_quantity
      t.text :tags
      t.string :author
      t.string :budget
      t.string :difficulty
      t.integer :rate
      t.text :author_tip
      t.integer :nb_comments

      t.timestamps
    end
  end
end

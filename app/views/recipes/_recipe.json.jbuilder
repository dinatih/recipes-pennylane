json.extract! recipe, :id, :name, :ingredients, :prep_time, :cook_time, :total_time, :people_quantity, :tags, :author, :budget, :difficulty, :rate, :author_tip, :nb_comments, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)

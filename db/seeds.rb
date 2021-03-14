# frozen_string_literal: true

require 'open-uri'

path = Rails.root.join('db/recipes.json')
File.foreach(path).with_index do |line, _i|
  # break if i > 12

  json = JSON.parse(line)
  recipe = Recipe.create!(json.except('image'))
  # recipe.image.attach(io: URI.parse(json['image']).open, filename: 'image.jpg') if json['image'].present?
rescue StandardError
  puts "Error on line: #{json}"
end
puts 'Recipes are seeded'

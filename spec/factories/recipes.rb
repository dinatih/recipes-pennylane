FactoryBot.define do
  factory :recipe do
    name { "MyString" }
    ingredients { "MyText" }
    prep_time { "MyString" }
    cook_time { "MyString" }
    total_time { "MyString" }
    people_quantity { 1 }
    tags { "MyText" }
    author { "MyString" }
    budget { "MyString" }
    difficulty { "MyString" }
    rate { 1 }
    author_tip { "MyText" }
    nb_comments { 1 }
  end
end

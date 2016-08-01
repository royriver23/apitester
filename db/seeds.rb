require 'faker'

Category.delete_all

[
  { title: 'Cafés Fríos', description: Faker::Lorem.paragraph},
  { title: 'Cafés', description: Faker::Lorem.paragraph},
  { title: 'Bebidas Calientes', description: Faker::Lorem.paragraph},
  { title: 'Bebidas Frías', description: Faker::Lorem.paragraph},
  { title: 'Postres', description: Faker::Lorem.paragraph},
  { title: 'Repostería Salada', description: Faker::Lorem.paragraph},
  { title: 'Repostería Dulce', description: Faker::Lorem.paragraph}
].each do |category|
  category_instance = Category.create(category)
  10.times do
    product_hash = {
                    name: Faker::Lorem.characters(10),
                    description: Faker::Lorem.paragraph,
                    price: Faker::Commerce.price
                   }
    category_instance.products.build(product_hash).save
  end
end

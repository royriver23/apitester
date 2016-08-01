class Product
  include Mongoid::Document
  include Mongoid::Timestamps
    
  embedded_in :category, inverse_of: :products

  field :name, type: String
  field :description, type: String
  field :price, type: String
end

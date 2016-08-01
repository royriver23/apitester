class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :products
  
  field :title, type: String
  field :description, type: String
end

class Category < ActiveRecord::Base
  attr_accessible :name, :popularity

  has_many :subcategories
  has_many :articles, as: :container
  has_one :pages
end

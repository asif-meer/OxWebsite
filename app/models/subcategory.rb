class Subcategory < ActiveRecord::Base
  attr_accessible :category_id, :name, :popularity
  has_many :articles, as: :container
end

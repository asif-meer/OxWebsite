class Subcategory < ActiveRecord::Base
  attr_accessible :category_id, :name, :popularity

  belongs_to :category
  has_many :articles, as: :container
end

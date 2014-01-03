class Category < ActiveRecord::Base
  attr_accessible :name, :popularity
  has_many :articles, as: :container
end

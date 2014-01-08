class Page < ActiveRecord::Base
  attr_accessible :page_name, :page_url, :status, :category_id
  belongs_to :category
end

class Page < ActiveRecord::Base
  attr_accessible :page_name, :page_url, :status
  belongs_to :category
end

class Article < ActiveRecord::Base
  attr_accessible :content, :title, :container_type, :container_id
  belongs_to :container, polymorphic: true
end

class BlogComment < ActiveRecord::Base
  belongs_to :post_id
  attr_accessible :body, :commenter
end

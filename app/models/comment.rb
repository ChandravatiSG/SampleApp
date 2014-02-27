class Comment < ActiveRecord::Base

  	attr_accessible :body, :commenter,:post_id
  	attr_accessor :commenter
  	validates :commenter, :presence => true,
    	             :length => { :minimum => 3}

   	validates :body, :presence => true,
    	              :length => { :minimum => 5}
	
end

class Post < ActiveRecord::Base
  #used for permalinks
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  
	attr_accessible :content, :name, :title

	validates :name, :presence => true,
    	             :length => { :minimum => 3}

 	validates :title, :presence => true,
    	              :length => { :minimum => 5}

	validates :content, :presence => true

	has_many :comments, :dependent => :destroy
	has_many :tags, :dependent => :destroy
  belongs_to :user
 
end

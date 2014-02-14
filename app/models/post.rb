class Post < ActiveRecord::Base
  	attr_accessible :content, :name, :title #, :tags_attributes

  	validates :name, :presence => true,
    	             :length => { :minimum => 3}

   	validates :title, :presence => true,
    	              :length => { :minimum => 5}
	
	validates :content, :presence => true

	has_many :comments, :dependent => :destroy
	has_many :tags, :dependent => :destroy
  belongs_to :user
 
  	#accepts_nested_attributes_for :tags, :allow_destroy => :true,
    #							  :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }	     
end

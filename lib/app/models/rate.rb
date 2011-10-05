class Rate < ActiveRecord::Base
  has_many :ratings
  
  validates_presence_of :score
  validates_uniqueness_of :score
  validates_numericality_of :score, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10
	
	attr_accessor :user_id
	attr_accessor :free_text
	attr_accessor :rater_name

end
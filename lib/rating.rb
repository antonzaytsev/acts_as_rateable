class Rating < ActiveRecord::Base
  belongs_to :rate
  belongs_to :rateable, :polymorphic => true
  
  validates_uniqueness_of :user_id, :scope => [:rateable_id, :rateable_type]

  class << self

    ##
    # Parse the specified array of [TourProduct]s in the requested format.
    #
    # === Parameters
    #
    # [ratings] the array of Rating records
    # [output] the requested output format, must be :xml or :json
    #
    # @return the "ratings" in the requested structure, e.g. xml format string
    #
    def parse_as(ratings, output = :xml)
      if output == :xml
        ratings.to_xml(:only => [:user_id, :free_text, :rater_name, :created_at],
                       :methods => [:score])
      elsif output == :json
        ratings.to_json(:only => [:user_id, :free_text, :rater_name, :created_at],
                        :methods => [:score])
      end
    end

  end # end class methods

  ##
  # Returns this rating's score, e.g. 6
  #
  def score
    rate.score
  end

end

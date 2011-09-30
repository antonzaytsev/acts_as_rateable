require File.dirname(__FILE__) + '/lib/acts_as_rateable'
ActiveRecord::Base.send(:include, ActiveRecord::Acts::Rateable)

class Review < ActiveRecord::Base

  has_one :reviewer, :class_name => 'User', :foreign_key => 'reviewer_id'

end

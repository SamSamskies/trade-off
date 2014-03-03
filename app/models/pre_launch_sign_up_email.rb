class PreLaunchSignUpEmail < ActiveRecord::Base
  validates :email, uniqueness: true
end

class User < ActiveRecord::Base

  has_many :provisions

  validates :email, uniqueness: true

end

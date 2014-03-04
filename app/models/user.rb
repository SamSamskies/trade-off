class User < ActiveRecord::Base

  has_many :provisions

  validates :email, uniqueness: true

  def city
    zipcode = Zipcode.find_by_code(self.postal_code)

    zipcode ? zipcode.city : "Unknown"
  end

end

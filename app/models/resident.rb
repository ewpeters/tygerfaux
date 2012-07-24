class Resident < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :pin, :status

  validates :pin, :uniqueness => true
end

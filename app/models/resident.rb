class Resident < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :pin, :status

  belongs_to :facility
  validates :pin, :uniqueness => true
end

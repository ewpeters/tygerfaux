class Facility < ActiveRecord::Base
  attr_accessible :name

  has_many :residents
end

require 'spec_helper'

describe Resident do
  it "should not allow two residents with the same PIN" do
    resident = FactoryGirl.create(:resident)

    new_resident = Resident.new(:pin => resident.pin)

    new_resident.should_not be_valid
  end
end
 
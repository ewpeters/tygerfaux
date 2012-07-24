require 'spec_helper'

describe "residents/show" do
  before(:each) do
    @resident = assign(:resident, stub_model(Resident,
      :first_name => "First Name",
      :last_name => "Last Name",
      :pin => "Pin",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Pin/)
    rendered.should match(/false/)
  end
end

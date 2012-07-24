require 'spec_helper'

describe "facilities/edit" do
  before(:each) do
    @facility = assign(:facility, stub_model(Facility,
      :name => "MyString"
    ))
  end

  it "renders the edit facility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => facilities_path(@facility), :method => "post" do
      assert_select "input#facility_name", :name => "facility[name]"
    end
  end
end

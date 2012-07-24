require 'spec_helper'

describe "facilities/new" do
  before(:each) do
    assign(:facility, stub_model(Facility,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new facility form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => facilities_path, :method => "post" do
      assert_select "input#facility_name", :name => "facility[name]"
    end
  end
end

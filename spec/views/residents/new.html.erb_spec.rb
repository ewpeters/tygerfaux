require 'spec_helper'

describe "residents/new" do
  before(:each) do
    assign(:resident, stub_model(Resident,
      :first_name => "MyString",
      :last_name => "MyString",
      :pin => "MyString",
      :status => false
    ).as_new_record)
  end

  it "renders new resident form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => residents_path, :method => "post" do
      assert_select "input#resident_first_name", :name => "resident[first_name]"
      assert_select "input#resident_last_name", :name => "resident[last_name]"
      assert_select "input#resident_pin", :name => "resident[pin]"
      assert_select "input#resident_status", :name => "resident[status]"
    end
  end
end

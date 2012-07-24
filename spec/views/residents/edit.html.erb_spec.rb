require 'spec_helper'

describe "residents/edit" do
  before(:each) do
    @resident = assign(:resident, stub_model(Resident,
      :first_name => "MyString",
      :last_name => "MyString",
      :pin => "MyString",
      :status => false
    ))
  end

  it "renders the edit resident form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => residents_path(@resident), :method => "post" do
      assert_select "input#resident_first_name", :name => "resident[first_name]"
      assert_select "input#resident_last_name", :name => "resident[last_name]"
      assert_select "input#resident_pin", :name => "resident[pin]"
      assert_select "input#resident_status", :name => "resident[status]"
    end
  end
end

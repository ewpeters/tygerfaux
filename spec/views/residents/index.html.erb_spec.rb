require 'spec_helper'

describe "residents/index" do
  before(:each) do
    assign(:residents, [
      stub_model(Resident,
        :first_name => "First Name",
        :last_name => "Last Name",
        :pin => "Pin",
        :status => false
      ),
      stub_model(Resident,
        :first_name => "First Name",
        :last_name => "Last Name",
        :pin => "Pin",
        :status => false
      )
    ])
  end

  it "renders a list of residents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pin".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

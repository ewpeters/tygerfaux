require 'spec_helper'

describe "facilities/index" do
  before(:each) do
    assign(:facilities, [
      stub_model(Facility,
        :name => "Name"
      ),
      stub_model(Facility,
        :name => "Name"
      )
    ])
  end

  it "renders a list of facilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

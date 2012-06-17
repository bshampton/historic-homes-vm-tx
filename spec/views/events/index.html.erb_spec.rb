require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :duration => "Duration",
        :link => "Link"
      ),
      stub_model(Event,
        :name => "Name",
        :duration => "Duration",
        :link => "Link"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end

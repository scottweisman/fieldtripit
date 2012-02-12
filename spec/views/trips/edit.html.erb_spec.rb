require 'spec_helper'

describe "trips/edit" do
  before(:each) do
    @trip = assign(:trip, stub_model(Trip,
      :place => "MyString",
      :description => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path(@trip), :method => "post" do
      assert_select "input#trip_place", :name => "trip[place]"
      assert_select "textarea#trip_description", :name => "trip[description]"
      assert_select "input#trip_user_id", :name => "trip[user_id]"
    end
  end
end

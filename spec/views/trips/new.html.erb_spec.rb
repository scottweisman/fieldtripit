require 'spec_helper'

describe "trips/new" do
  before(:each) do
    assign(:trip, stub_model(Trip,
      :place => "MyString",
      :description => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path, :method => "post" do
      assert_select "input#trip_place", :name => "trip[place]"
      assert_select "textarea#trip_description", :name => "trip[description]"
      assert_select "input#trip_user_id", :name => "trip[user_id]"
    end
  end
end

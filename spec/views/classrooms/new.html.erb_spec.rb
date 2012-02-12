require 'spec_helper'

describe "classrooms/new" do
  before(:each) do
    assign(:classroom, stub_model(Classroom,
      :classroom_name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new classroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classrooms_path, :method => "post" do
      assert_select "input#classroom_classroom_name", :name => "classroom[classroom_name]"
      assert_select "input#classroom_user_id", :name => "classroom[user_id]"
    end
  end
end

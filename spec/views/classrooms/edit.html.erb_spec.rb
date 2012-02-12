require 'spec_helper'

describe "classrooms/edit" do
  before(:each) do
    @classroom = assign(:classroom, stub_model(Classroom,
      :classroom_name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit classroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => classrooms_path(@classroom), :method => "post" do
      assert_select "input#classroom_classroom_name", :name => "classroom[classroom_name]"
      assert_select "input#classroom_user_id", :name => "classroom[user_id]"
    end
  end
end

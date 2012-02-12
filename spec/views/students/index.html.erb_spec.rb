require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :student_first_name => "Student First Name",
        :student_last_name => "Student Last Name",
        :parent1_email => "Parent1 Email",
        :parent2_email => "Parent2 Email",
        :classroom_id => 1
      ),
      stub_model(Student,
        :student_first_name => "Student First Name",
        :student_last_name => "Student Last Name",
        :parent1_email => "Parent1 Email",
        :parent2_email => "Parent2 Email",
        :classroom_id => 1
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parent1 Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parent2 Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

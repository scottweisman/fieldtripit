require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :student_first_name => "Student First Name",
      :student_last_name => "Student Last Name",
      :parent1_email => "Parent1 Email",
      :parent2_email => "Parent2 Email",
      :classroom_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parent1 Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parent2 Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

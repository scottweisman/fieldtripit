require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :student_first_name => "MyString",
      :student_last_name => "MyString",
      :parent1_email => "MyString",
      :parent2_email => "MyString",
      :classroom_id => 1
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path(@student), :method => "post" do
      assert_select "input#student_student_first_name", :name => "student[student_first_name]"
      assert_select "input#student_student_last_name", :name => "student[student_last_name]"
      assert_select "input#student_parent1_email", :name => "student[parent1_email]"
      assert_select "input#student_parent2_email", :name => "student[parent2_email]"
      assert_select "input#student_classroom_id", :name => "student[classroom_id]"
    end
  end
end

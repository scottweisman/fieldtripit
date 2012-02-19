require 'spec_helper'

describe "permissions/edit" do
  before(:each) do
    @permission = assign(:permission, stub_model(Permission,
      :user_id => 1,
      :parent1_email => "MyString",
      :parent2_email => "MyString",
      :token => "MyString"
    ))
  end

  it "renders the edit permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => permissions_path(@permission), :method => "post" do
      assert_select "input#permission_user_id", :name => "permission[user_id]"
      assert_select "input#permission_parent1_email", :name => "permission[parent1_email]"
      assert_select "input#permission_parent2_email", :name => "permission[parent2_email]"
      assert_select "input#permission_token", :name => "permission[token]"
    end
  end
end

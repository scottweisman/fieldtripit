require 'spec_helper'

describe "permissions/show" do
  before(:each) do
    @permission = assign(:permission, stub_model(Permission,
      :user_id => 1,
      :parent1_email => "Parent1 Email",
      :parent2_email => "Parent2 Email",
      :token => "Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parent1 Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parent2 Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Token/)
  end
end

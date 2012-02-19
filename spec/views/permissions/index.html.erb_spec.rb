require 'spec_helper'

describe "permissions/index" do
  before(:each) do
    assign(:permissions, [
      stub_model(Permission,
        :user_id => 1,
        :parent1_email => "Parent1 Email",
        :parent2_email => "Parent2 Email",
        :token => "Token"
      ),
      stub_model(Permission,
        :user_id => 1,
        :parent1_email => "Parent1 Email",
        :parent2_email => "Parent2 Email",
        :token => "Token"
      )
    ])
  end

  it "renders a list of permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parent1 Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parent2 Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "developers/new", type: :view do
  before(:each) do
    assign(:developer, Developer.new(
      name: "MyString",
      email: "MyString",
      position: "MyString",
      title: "MyString"
    ))
  end

  it "renders new developer form" do
    render

    assert_select "form[action=?][method=?]", developers_path, "post" do

      assert_select "input[name=?]", "developer[name]"

      assert_select "input[name=?]", "developer[email]"

      assert_select "input[name=?]", "developer[position]"

      assert_select "input[name=?]", "developer[title]"
    end
  end
end

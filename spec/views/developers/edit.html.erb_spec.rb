require 'rails_helper'

RSpec.describe "developers/edit", type: :view do
  before(:each) do
    @developer = assign(:developer, Developer.create!(
      name: "MyString",
      email: "MyString",
      position: "MyString",
      title: "MyString"
    ))
  end

  it "renders the edit developer form" do
    render

    assert_select "form[action=?][method=?]", developer_path(@developer), "post" do

      assert_select "input[name=?]", "developer[name]"

      assert_select "input[name=?]", "developer[email]"

      assert_select "input[name=?]", "developer[position]"

      assert_select "input[name=?]", "developer[title]"
    end
  end
end

require 'rails_helper'

RSpec.describe "developers/index", type: :view do
  before(:each) do
    assign(:developers, [
      Developer.create!(
        name: "Name",
        email: "Email",
        position: "Position",
        title: "Title"
      ),
      Developer.create!(
        name: "Name",
        email: "Email1",
        position: "Position",
        title: "Title"
      )
    ])
  end

  it "renders a list of developers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 1
    assert_select "tr>td", text: "Email1".to_s, count: 1
    assert_select "tr>td", text: "Position".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end

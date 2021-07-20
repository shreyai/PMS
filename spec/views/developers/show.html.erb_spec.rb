require 'rails_helper'

RSpec.describe "developers/show", type: :view do
  before(:each) do
    @developer = assign(:developer, Developer.create!(
      name: "Name",
      email: "Email",
      position: "Position",
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Title/)
  end
end

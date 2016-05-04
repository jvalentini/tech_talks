require 'rails_helper'

RSpec.describe "tech_talks/index", type: :view do
  before(:each) do
    assign(:tech_talks, [
      TechTalk.create!(title: "Talk 1"),
      TechTalk.create!(title: "Another talk")
    ])
  end

  it "renders a list of tech_talks" do
    render
  end
end

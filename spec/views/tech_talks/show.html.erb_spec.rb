require 'rails_helper'

RSpec.describe "tech_talks/show", type: :view do
  before(:each) do
    @tech_talk = assign(:tech_talk, TechTalk.create!(title: "Show talk"))
  end

  it "renders attributes in <p>" do
    render
  end
end

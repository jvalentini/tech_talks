require 'rails_helper'

RSpec.describe "tech_talks/index", type: :view do
  before(:each) do
    assign(:tech_talks, [
      TechTalk.create!(),
      TechTalk.create!()
    ])
  end

  it "renders a list of tech_talks" do
    render
  end
end

require 'rails_helper'

RSpec.describe "tech_talks/edit", type: :view do
  before(:each) do
    @tech_talk = assign(:tech_talk, TechTalk.create!())
  end

  it "renders the edit tech_talk form" do
    render

    assert_select "form[action=?][method=?]", tech_talk_path(@tech_talk), "post" do
    end
  end
end

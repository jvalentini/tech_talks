require 'rails_helper'

RSpec.describe 'tech_talks/new', type: :view do
  before(:each) do
    assign(:tech_talk, TechTalk.new)
  end

  it 'renders new tech_talk form' do
    render

    assert_select 'form[action=?][method=?]', tech_talks_path, 'post' do
    end
  end
end

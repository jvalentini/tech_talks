require 'rails_helper'

RSpec.describe 'tech_talks/edit', type: :view do
  let(:tech_talk) { assign(:tech_talk, TechTalk.create!(title: 'My first talk')) }

  it 'renders the edit tech_talk form' do
    render

    assert_select 'form[action=?][method=?]', tech_talk_path(tech_talk), 'post' do
    end
  end
end

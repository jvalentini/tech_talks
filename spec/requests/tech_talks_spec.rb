require 'rails_helper'

RSpec.describe "TechTalks", type: :request do
  describe "GET /tech_talks" do
    it "works! (now write some real specs)" do
      get tech_talks_path
      expect(response).to have_http_status(200)
    end
  end
end

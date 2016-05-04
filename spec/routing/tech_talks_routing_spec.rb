require 'rails_helper'

RSpec.describe TechTalksController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/tech_talks').to route_to('tech_talks#index')
    end

    it 'routes to #new' do
      expect(get: '/tech_talks/new').to route_to('tech_talks#new')
    end

    it 'routes to #show' do
      expect(get: '/tech_talks/1').to route_to('tech_talks#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/tech_talks/1/edit').to route_to('tech_talks#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/tech_talks').to route_to('tech_talks#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/tech_talks/1').to route_to('tech_talks#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/tech_talks/1').to route_to('tech_talks#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/tech_talks/1').to route_to('tech_talks#destroy', id: '1')
    end
  end
end

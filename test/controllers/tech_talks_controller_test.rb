require 'test_helper'

class TechTalksControllerTest < ActionController::TestCase
  setup do
    @tech_talk = tech_talks(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_talks)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create tech_talk' do
    assert_difference('TechTalk.count') do
      post :create, tech_talk: { description: @tech_talk.description, length: @tech_talk.length, like: @tech_talk.like, title: @tech_talk.title, views: @tech_talk.views }
    end

    assert_redirected_to tech_talk_path(assigns(:tech_talk))
  end

  test 'should show tech_talk' do
    get :show, id: @tech_talk
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @tech_talk
    assert_response :success
  end

  test 'should update tech_talk' do
    patch :update, id: @tech_talk, tech_talk: { description: @tech_talk.description, length: @tech_talk.length, like: @tech_talk.like, title: @tech_talk.title, views: @tech_talk.views }
    assert_redirected_to tech_talk_path(assigns(:tech_talk))
  end

  test 'should destroy tech_talk' do
    assert_difference('TechTalk.count', -1) do
      delete :destroy, id: @tech_talk
    end

    assert_redirected_to tech_talks_path
  end
end

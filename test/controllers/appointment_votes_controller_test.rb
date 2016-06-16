require 'test_helper'

class AppointmentVotesControllerTest < ActionController::TestCase
  setup do
    @appointment_vote = appointment_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointment_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment_vote" do
    assert_difference('AppointmentVote.count') do
      post :create, appointment_vote: { appointment_id: @appointment_vote.appointment_id, state: @appointment_vote.state, user_id: @appointment_vote.user_id }
    end

    assert_redirected_to appointment_vote_path(assigns(:appointment_vote))
  end

  test "should show appointment_vote" do
    get :show, id: @appointment_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment_vote
    assert_response :success
  end

  test "should update appointment_vote" do
    patch :update, id: @appointment_vote, appointment_vote: { appointment_id: @appointment_vote.appointment_id, state: @appointment_vote.state, user_id: @appointment_vote.user_id }
    assert_redirected_to appointment_vote_path(assigns(:appointment_vote))
  end

  test "should destroy appointment_vote" do
    assert_difference('AppointmentVote.count', -1) do
      delete :destroy, id: @appointment_vote
    end

    assert_redirected_to appointment_votes_path
  end
end

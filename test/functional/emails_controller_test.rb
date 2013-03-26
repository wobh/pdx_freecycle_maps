require 'test_helper'

class EmailsControllerTest < ActionController::TestCase
  setup do
    @email = emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email" do
    assert_difference('Email.count') do
      post :create, email: { message_body: @email.message_body, message_date: @email.message_date, message_id: @email.message_id, subject: @email.subject }
    end

    assert_response 201
  end

  test "should show email" do
    get :show, id: @email
    assert_response :success
  end

  test "should update email" do
    put :update, id: @email, email: { message_body: @email.message_body, message_date: @email.message_date, message_id: @email.message_id, subject: @email.subject }
    assert_response 204
  end

  test "should destroy email" do
    assert_difference('Email.count', -1) do
      delete :destroy, id: @email
    end

    assert_response 204
  end
end

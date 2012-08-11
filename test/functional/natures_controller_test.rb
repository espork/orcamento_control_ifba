require 'test_helper'

class NaturesControllerTest < ActionController::TestCase
  setup do
    @nature = natures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:natures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nature" do
    assert_difference('Nature.count') do
      post :create, nature: { esf: @nature.esf, ev: @nature.ev, fonte: @nature.fonte, nd: @nature.nd, pi: @nature.pi, ptres: @nature.ptres }
    end

    assert_redirected_to nature_path(assigns(:nature))
  end

  test "should show nature" do
    get :show, id: @nature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nature
    assert_response :success
  end

  test "should update nature" do
    put :update, id: @nature, nature: { esf: @nature.esf, ev: @nature.ev, fonte: @nature.fonte, nd: @nature.nd, pi: @nature.pi, ptres: @nature.ptres }
    assert_redirected_to nature_path(assigns(:nature))
  end

  test "should destroy nature" do
    assert_difference('Nature.count', -1) do
      delete :destroy, id: @nature
    end

    assert_redirected_to natures_path
  end
end

require 'test_helper'

class UsersBackoffice::EventosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_eventos_index_url
    assert_response :success
  end

  test "should get programacao" do
    get users_backoffice_eventos_programacao_url
    assert_response :success
  end

end

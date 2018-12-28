require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "サンプルアプリケーション"
  end
  
  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "ヘルプ | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "サンプルアプリケーションについて | #{@base_title}"
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "問い合わせ先 | #{@base_title}"
  end
end
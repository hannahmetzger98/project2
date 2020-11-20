require 'test_helper'

class CovidFaqControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get covid_faq_new_url
    assert_response :success
  end

  test "should get show" do
    get covid_faq_show_url
    assert_response :success
  end

end

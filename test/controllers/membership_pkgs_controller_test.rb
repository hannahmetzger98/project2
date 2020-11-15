require 'test_helper'

class MembershipPkgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membership_pkg = membership_pkgs(:one)
  end

  test "should get index" do
    get membership_pkgs_url
    assert_response :success
  end

  test "should get new" do
    get new_membership_pkg_url
    assert_response :success
  end

  test "should create membership_pkg" do
    assert_difference('MembershipPkg.count') do
      post membership_pkgs_url, params: { membership_pkg: { amenities: @membership_pkg.amenities, name: @membership_pkg.name, price: @membership_pkg.price } }
    end

    assert_redirected_to membership_pkg_url(MembershipPkg.last)
  end

  test "should show membership_pkg" do
    get membership_pkg_url(@membership_pkg)
    assert_response :success
  end

  test "should get edit" do
    get edit_membership_pkg_url(@membership_pkg)
    assert_response :success
  end

  test "should update membership_pkg" do
    patch membership_pkg_url(@membership_pkg), params: { membership_pkg: { amenities: @membership_pkg.amenities, name: @membership_pkg.name, price: @membership_pkg.price } }
    assert_redirected_to membership_pkg_url(@membership_pkg)
  end

  test "should destroy membership_pkg" do
    assert_difference('MembershipPkg.count', -1) do
      delete membership_pkg_url(@membership_pkg)
    end

    assert_redirected_to membership_pkgs_url
  end
end

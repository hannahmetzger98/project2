require "application_system_test_case"

class MembershipPkgsTest < ApplicationSystemTestCase
  setup do
    @membership_pkg = membership_pkgs(:one)
  end

  test "visiting the index" do
    visit membership_pkgs_url
    assert_selector "h1", text: "Membership Pkgs"
  end

  test "creating a Membership pkg" do
    visit membership_pkgs_url
    click_on "New Membership Pkg"

    fill_in "Amenities", with: @membership_pkg.amenities
    fill_in "Name", with: @membership_pkg.name
    fill_in "Price", with: @membership_pkg.price
    click_on "Create Membership pkg"

    assert_text "Membership pkg was successfully created"
    click_on "Back"
  end

  test "updating a Membership pkg" do
    visit membership_pkgs_url
    click_on "Edit", match: :first

    fill_in "Amenities", with: @membership_pkg.amenities
    fill_in "Name", with: @membership_pkg.name
    fill_in "Price", with: @membership_pkg.price
    click_on "Update Membership pkg"

    assert_text "Membership pkg was successfully updated"
    click_on "Back"
  end

  test "destroying a Membership pkg" do
    visit membership_pkgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membership pkg was successfully destroyed"
  end
end

require "application_system_test_case"

class FitnessClassesTest < ApplicationSystemTestCase
  setup do
    @fitness_class = fitness_classes(:one)
  end

  test "visiting the index" do
    visit fitness_classes_url
    assert_selector "h1", text: "Fitness Classes"
  end

  test "creating a Fitness class" do
    visit fitness_classes_url
    click_on "New Fitness Class"

    click_on "Create Fitness class"

    assert_text "Fitness class was successfully created"
    click_on "Back"
  end

  test "updating a Fitness class" do
    visit fitness_classes_url
    click_on "Edit", match: :first

    click_on "Update Fitness class"

    assert_text "Fitness class was successfully updated"
    click_on "Back"
  end

  test "destroying a Fitness class" do
    visit fitness_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fitness class was successfully destroyed"
  end
end

require "application_system_test_case"

class Num2sTest < ApplicationSystemTestCase
  setup do
    @num2 = num2s(:one)
  end

  test "visiting the index" do
    visit num2s_url
    assert_selector "h1", text: "Num2s"
  end

  test "creating a Num2" do
    visit num2s_url
    click_on "New Num2"

    fill_in "Acc number", with: @num2.acc_number
    fill_in "Acc type", with: @num2.acc_type
    fill_in "Bank", with: @num2.bank
    fill_in "Email", with: @num2.email
    fill_in "Person name", with: @num2.person_name
    fill_in "Rut", with: @num2.rut
    click_on "Create Num2"

    assert_text "Num2 was successfully created"
    click_on "Back"
  end

  test "updating a Num2" do
    visit num2s_url
    click_on "Edit", match: :first

    fill_in "Acc number", with: @num2.acc_number
    fill_in "Acc type", with: @num2.acc_type
    fill_in "Bank", with: @num2.bank
    fill_in "Email", with: @num2.email
    fill_in "Person name", with: @num2.person_name
    fill_in "Rut", with: @num2.rut
    click_on "Update Num2"

    assert_text "Num2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Num2" do
    visit num2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Num2 was successfully destroyed"
  end
end

require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "creating a Company" do
    visit companies_url
    click_on "New Company"

    fill_in "Address", with: @company.address
    fill_in "City", with: @company.city
    fill_in "Company name", with: @company.company_name
    fill_in "Email", with: @company.email
    fill_in "Fax", with: @company.fax
    fill_in "Phone no", with: @company.phone_no
    fill_in "Postcode", with: @company.postcode
    fill_in "Register no", with: @company.register_no
    fill_in "State", with: @company.state
    fill_in "Website", with: @company.website
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit companies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @company.address
    fill_in "City", with: @company.city
    fill_in "Company name", with: @company.company_name
    fill_in "Email", with: @company.email
    fill_in "Fax", with: @company.fax
    fill_in "Phone no", with: @company.phone_no
    fill_in "Postcode", with: @company.postcode
    fill_in "Register no", with: @company.register_no
    fill_in "State", with: @company.state
    fill_in "Website", with: @company.website
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end

require "application_system_test_case"

class EcommerceWebsitesTest < ApplicationSystemTestCase
  setup do
    @ecommerce_website = ecommerce_websites(:one)
  end

  test "visiting the index" do
    visit ecommerce_websites_url
    assert_selector "h1", text: "Ecommerce websites"
  end

  test "should create ecommerce website" do
    visit ecommerce_websites_url
    click_on "New ecommerce website"

    fill_in "Access token", with: @ecommerce_website.access_token
    fill_in "Name", with: @ecommerce_website.name
    fill_in "Url", with: @ecommerce_website.url
    click_on "Create Ecommerce website"

    assert_text "Ecommerce website was successfully created"
    click_on "Back"
  end

  test "should update Ecommerce website" do
    visit ecommerce_website_url(@ecommerce_website)
    click_on "Edit this ecommerce website", match: :first

    fill_in "Access token", with: @ecommerce_website.access_token
    fill_in "Name", with: @ecommerce_website.name
    fill_in "Url", with: @ecommerce_website.url
    click_on "Update Ecommerce website"

    assert_text "Ecommerce website was successfully updated"
    click_on "Back"
  end

  test "should destroy Ecommerce website" do
    visit ecommerce_website_url(@ecommerce_website)
    click_on "Destroy this ecommerce website", match: :first

    assert_text "Ecommerce website was successfully destroyed"
  end
end

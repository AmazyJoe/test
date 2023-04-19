require "application_system_test_case"

class SearchHistoriesTest < ApplicationSystemTestCase
  setup do
    @search_history = search_histories(:one)
  end

  test "visiting the index" do
    visit search_histories_url
    assert_selector "h1", text: "Search histories"
  end

  test "should create search history" do
    visit search_histories_url
    click_on "New search history"

    fill_in "Query", with: @search_history.query
    fill_in "User", with: @search_history.user_id
    click_on "Create Search history"

    assert_text "Search history was successfully created"
    click_on "Back"
  end

  test "should update Search history" do
    visit search_history_url(@search_history)
    click_on "Edit this search history", match: :first

    fill_in "Query", with: @search_history.query
    fill_in "User", with: @search_history.user_id
    click_on "Update Search history"

    assert_text "Search history was successfully updated"
    click_on "Back"
  end

  test "should destroy Search history" do
    visit search_history_url(@search_history)
    click_on "Destroy this search history", match: :first

    assert_text "Search history was successfully destroyed"
  end
end

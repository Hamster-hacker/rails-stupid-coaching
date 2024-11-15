require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask!"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  # test "visiting /answer displays yours and coaches answer" do
  #   visit answer_url
  #   find_text('- You', :visible => :all).visible?
  # end

end

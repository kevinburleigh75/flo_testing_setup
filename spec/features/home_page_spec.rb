require 'spec_helper'

describe 'Home Page' do
  it "displays welcome message" do
    visit root_path
    user_sees_welcome_message 'Welcome'
  end
end

def user_sees_welcome_message(message)
  expect(page).to have_css 'div.welcome', text: message
end

require 'rails_helper'

feature "logging in" do
  scenario "the user can log in with their valid information"
    before :each do
      User.make(email: 'user@example.com', password: 'password')
    end

    it "logs user in" do
      visit '/sessions/new'
      within("#session") do
        fill_in 'Email', with: 'user@example.com'
        fill_in 'Password', with: 'password'
      end
      click_button 'Log in'
      expect(page).to have_content 'Success'
    end
  end

  scenario "the user cannot log in with incorrect information"

  scenario "the user will be directed to the homepage when user information is valid"
end
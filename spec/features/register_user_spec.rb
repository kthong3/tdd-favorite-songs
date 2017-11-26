require 'rails_helper'

feature "user visits the registration page" do
  scenario "the user can enter their information to sign up" do
    songs = Songs.all
    song = Song.first
    visit "/"

    within(".songs-container") do
      expect(page).to have_content(songs)
      click_link("U Remind Me")
    end

    expect(page). to have_current_path song_path(song)
  end

  scenario "the website will validate if user information is correct upon signing up"

  scenario "signing up correctly will direct user to the homepage"
end
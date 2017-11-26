require 'rails_helper'

feature "visiting the homepage" do
  scenario "the user sees a list of songs and can view them" do
    songs = Songs.all
    song = Song.first
    visit "/"

    within(".songs-container") do
      expect(page).to have_content(songs)
      click_link("U Remind Me")
    end

    expect(page). to have_current_path song_path(song)
  end

  scenario "the user can add a new song"
end
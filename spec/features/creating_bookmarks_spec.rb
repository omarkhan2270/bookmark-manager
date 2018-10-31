require 'spec_helper'
require 'launchy'

feature 'adding a new bookmark' do
  scenario 'A user can add a bookmark to bookmark manager' do
    visit('/bookmarks/new')
    save_and_open_page
    fill_in('url', with: 'http://www.testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://www.testbookmark.com'
  end
end

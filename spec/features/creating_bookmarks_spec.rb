feature 'adding a new bookmark' do
  scenario 'A user can add a bookmark to bookmark manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmarks.com'
  end
end

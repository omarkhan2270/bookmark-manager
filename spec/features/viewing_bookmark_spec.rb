require 'pg'

feature 'Viewing bookmarks' do
  scenario 'the page title is visible' do
    visit '/'

    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Viewing bookmarks' do
    scenario 'bookmarks are visible' do

      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "http://www.destroyallsoftware.com")
      Bookmark.create(url: "http://www.google.com")

      visit '/bookmarks'

end
end

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'User can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "https://pomofocus.io/"
    expect(page).to have_content "https://www.google.co.uk/"
    expect(page).to have_content "https://earthsky.org/clusters-nebulae-galaxies/orion-nebula-jewel-in-orions-sword/"
  end
end
require 'bookmark'

describe Bookmark do
  describe "#all" do
    it "returns all bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://pomofocus.io/")
      expect(bookmarks).to include("https://www.google.co.uk/")
      expect(bookmarks).to include("https://earthsky.org/clusters-nebulae-galaxies/orion-nebula-jewel-in-orions-sword/")
    end
    end
end

require 'sinatra/base'
require 'sinatra/reloader'
require '/Users/saritaradia/Desktop/Projects/Bookmark_Manager/lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = %w[https://pomofocus.io/ https://www.google.co.uk/ https://earthsky.org/clusters-nebulae-galaxies/orion-nebula-jewel-in-orions-sword/]

    erb :bookmarks
  end

  run! if app_file == $0
end
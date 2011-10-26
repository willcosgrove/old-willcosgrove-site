class ApplicationController < ActionController::Base
  protect_from_forgery
  
  class Song
    attr_accessor :name, :artist_name
    def initialize(name, artist_name)
      @name = name
      @artist_name = artist_name
    end
  end
  
  def is_listening_to_something?
    LastFM::User.get_recent_tracks(user: 'willcosgrove')["recenttracks"]["track"].first["@attr"]
  end
  
  def current_song
    if is_listening_to_something?
      song = LastFM::User.get_recent_tracks(user: 'willcosgrove')["recenttracks"]["track"].first
      return Song.new(song["name"],song["artist"]["#text"])
    end
  end
  
end

class Song
  @@count=0
  @@artists=Array.new
  @@genres=Array.new

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  attr_reader :name, :genre, :artist

  def self.count
    @@count
  end

  def self.artists


  end

  def self.genres
    @@genres
  end

  def self.artist_count
    h={}
    @@artists.each do |ar|
      if h[ar]==nil
        h[ar]=1
      else
        h[ar]+=1
      end
    end
    return h
  end
end

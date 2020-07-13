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
    return @@artists
  end

  def self.genres
    return @@genres
  end

  def genre_count
    hash{}

  end
end

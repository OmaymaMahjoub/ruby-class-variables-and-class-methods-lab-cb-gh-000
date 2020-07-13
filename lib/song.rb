class Song
  @@artists={}
  @@count=0
  @@genres={}
  attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    add_artist(artist)
    add_genre(genre)
    @@count+=1
  end
  def self.add_genre(genre)
    if @@genres[genre]==nil
      @@genres[genre]=1
    else
      @@genres[genre]+=1
    end
  end
  def self.add_artist(artist)
    if @@artists[artist]==nil
      @@artists[artist]=1
    else
      @@artists[artist]+=1
    end
  end
  def self.genres
    @@genres.each do |key,value|
      key
    end
  end
  def self.artists
    @@arists.each do |key,value|
      key
    end
  end
  def self.genre_count
    @@genres
  end
  def self.artist_count
    @@artists
  end

end

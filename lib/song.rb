class Song
  @@artists={}
  @@count=0
  @@genres={}
  attr_reader :name, :artist, :genre
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    if @@artists[artist]==nil
      @@artists[artist]=1
    else
      @@artists[artist]+=1
    end
    if @@genres[genre]==nil
      @@genres[genre]=1
    else
      @@genres[genre]+=1
    end
    @@count+=1
  end
  def self.count
    @@count
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

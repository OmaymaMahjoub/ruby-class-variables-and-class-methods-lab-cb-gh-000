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
  def add_genre(genre)
    if @@genres[genre]==nil
      @@genres[genre]=1
    else
      @@genres[genre]+=1
    end
  end
  def add_artist(artist)
    if @@artists[artist]==nil
      @@artists[artist]=1
    else
      @@artists[artist]+=1
    end
  end
  def genres
    @@genres.each do |key,value|
      key
    end
  end
  def artists
    @@arists.each do |key,value|
      key
    end
  end
  def genre_count
    @@genres
  end
  def artist_count
    @@artists.size
  end

end

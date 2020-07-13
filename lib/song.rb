class Song
  @@artists=[]
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
    if artists.include?(artist)==false
      artists<<artist
    end
  end
end

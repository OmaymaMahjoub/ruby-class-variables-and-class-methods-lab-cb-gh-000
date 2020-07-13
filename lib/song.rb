class Song
  @@count=0
  @@artists=Array.new
  @@genres=Array.new

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists<<artist
    @genres<<genre
  end

  attr_reader :name, :genre, :artist

  def self.count
    @@count
  end
end

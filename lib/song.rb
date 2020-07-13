class Song
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists<<artist
    @genres<<genre
  end

  def attr_reader :name, :genre, :artist

  def self.count
    @@count
  end
end

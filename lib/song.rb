require "pry"

class Song
  attr_accessor :artist, :name, :genre

#class variables
  @@count = 0
  @@artists = []
  @@genres =[]


  def initialize(name, artist, genre)
    #instance variables
    @artist = artist
    @name = name
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

# self methods
  def self.name
    @name
  end

  def self.artist
    @artist
  end

  def self.genre
    @genre
  end

# class methods
  def Song.count
    @@count
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.genre_count
    # using a new variable genre_hash which inializes a new Hash.
    # Passing the current class variable @@genres then enumeratoring over the array
    # of genres populating a the new class viable genre_hash then returning that hash

    genre_hash = Hash.new(0)

    @@genres.each {|genre| genre_hash[genre] += 1}

    genre_hash

  end

  def Song.artist_count

    artist_hash = Hash.new(0)

    @@artists.each {|artist| artist_hash[artist] += 1}

    artist_hash

  end

end

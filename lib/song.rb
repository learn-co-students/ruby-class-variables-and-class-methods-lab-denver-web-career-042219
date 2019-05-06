class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def count
    @@count
  end

  def artists
    @@artists
  end

  def genres
    @@genres
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_num = {}
    @@genres.each do |genre|
      if !genre_num.include?(genre)
        genre_num[genre] = 1
      else
        genre_num[genre] +=1
      end
    end
    genre_num
  end


  def self.artist_count
    artist_num = {}
    @@artists.each do |artist|
      if !artist_num.include?(artist)
        artist_num[artist] = 1
      else
        artist_num[artist] += 1
      end
    end
    artist_num
  end

end

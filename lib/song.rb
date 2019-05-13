class Song
  attr_accessor :name, :artist, :genre
  @@genres = []
  @@artists = []
  @@count = 2

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count = @@count + 1
    # @@count += 1

  end

  def song_name
    @name
  end

  def song_artist
    @artist
  end

  def song_genre
    @genre
  end

  def self.artists
   @@artists.uniq
 end

  def self.count
   @@count
 end

  def self.counter
    @@count
  end

  def self.genres
   @@genres.uniq
 end

 def self.genre_count
   genre_hash = {}
   @@genres.each do |genre|
     if !genre_hash.include?(genre)
       genre_hash[genre] = 1
     elsif genre_hash.include?(genre)
       genre_hash[genre] += 1
     end
     #binding.pry
   end
   genre_hash
 end

 def self.artist_count
   artist_hash = {}
   @@artists.each do |artist|
     if !artist_hash.include?(artist)
       artist_hash[artist] = 1
     elsif artist_hash.include?(artist)
       artist_hash[artist] += 1
     end
     #binding.pry
   end
   artist_hash
 end
end

class Song

attr_accessor :name, :artist, :genre

#def initialize(name)
#  @name = name
#end

def initialize(name)
  @name = name
end

# should take in name of the form Thundercat - For Love I Come - dance.mp3
# and create a new song object from it, assigning artist and genre to it
def self.new_by_filename(filename)

  # parse file name
  artist = filename.split(' - ')[0]
  song_name = filename.split(' - ')[1]
  genre = filename.split(' - ')[2]

  # create new song instance
  song = Song.new(song_name)

  # set attributes of that new instance
  song.name = song_name

  # uh oh - need to match genre better
  song.genre = filename.split(' - ')[2]

  song.artist = Artist.find_or_create_by_name(artist)
  song.artist.add_song(self)
  # should song add itself to artist's collection of songs
  # or should artist add song to itself?

  return song
end

end

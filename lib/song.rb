class Song

attr_accessor :name, :artist, :genre

def initialize(name)
  @name = name
end

# should take in name of the form Thundercat - For Love I Come - dance.mp3
# and create a new song object from it, assigning artist and genre to it
def self.new_by_filename(parsed_song_name)
  song = Song.new

  song.artist = parsed_song_name.split(' - ')[0]
  Artist.add_artist_if_doesnt_exist(song.artist)

  song.name = parsed_song_name.split(' - ')[1]
  song.genre = parsed_song_name.split(' - ')[2]
end


end

class Artist
  attr_accessor :name, :songs

  @@all = []

  # put instance variables that you want to initialize
  # in side of the initialize function to avoid
  # problems

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  # add artist to self.all if not already There

  # I want to refactor this into - does artist
  # exist and create artist.
  def self.add_artist_if_doesnt_exist(artist_name)
    # self.all doesn't include artist
    if !self.all.include?(artist_name)
      new_artist = Artist.new
      new_artist.name = artist_name
      @@all << new_artist
    end
  end

  def self.find_or_create_by_name

  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end


end

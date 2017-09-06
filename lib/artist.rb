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


  def self.find_by_name(artist_name)
    # i expect this returns nil if no name match
    # and returns the actual artist instance if name name
    # amtch
    self.all.detect{|a| a.name == artist_name}
  end

  def self.create_by_name(artist_name)
    new_artist = Artist.new(artist_name)
    new_artist.name = artist_name
    @@all << new_artist
    return new_artist
  end

  def self.find_or_create_by_name(artist_name)
    # self.all doesn't include artist
    artist_found_truthiness = self.find_by_name(artist_name)
    if artist_found_truthiness
      artist_found_truthiness
    else
      self.create_by_name(artist_name)
    end
  end


  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end


end

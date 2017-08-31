class MP3Importer

  #MP3Importer.new('./db/mp3s').import

  def self.initialize(path)
    @path = path
  end

  # this should return an array with every file in the path
  def self.files
    puts "for testing purposes!"
  end

  # this should make use of methods in the song class to create new instances
  # of songs based on the array
  def self.import
  end

end

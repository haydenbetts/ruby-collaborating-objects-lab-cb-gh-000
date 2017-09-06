class MP3Importer

  #MP3Importer.new('./db/mp3s').import

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  # this should return an array with every file in the path
  def files

    # create array with every file in it
    all_mp3s = Dir.glob("#{self.path}/*.mp3")

    # normalize the names of those files to remove path
    all_mp3s.collect do |filename|
      File.basename(filename)
    end
  end

  # this should make use of methods in the song class to create new instances
  # of songs based on the array


  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end

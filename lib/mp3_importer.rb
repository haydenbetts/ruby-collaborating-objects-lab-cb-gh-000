class MP3Importer

  #MP3Importer.new('./db/mp3s').import

  def initialize(path)
    @path = path
  end

  # this should return an array with every file in the path
  def files
    # Where the folder variable is the path to the root folder
    Dir.glob("#{@path}/*.mp3")
  end

  # this should make use of methods in the song class to create new instances
  # of songs based on the array


  def import
  #  @parsed_file_names = []
  #  self.files.each do |file_name|
  #    @parse_file_names << file_name.scan(/mp3s\/(.+).mp3/)
  #  end
  #  @parsed_file_names
  end

end

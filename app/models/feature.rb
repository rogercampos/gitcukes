class Feature
  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  def read
    File.read(absolute_path)
  end

  def absolute_path
    "#{REPO_DIR}/features/#{@name}"
  end

  class << self
    def load
      Dir.glob("#{REPO_DIR}/features/*.feature").map{|x| new(File.basename(x))}
    end
  end
end

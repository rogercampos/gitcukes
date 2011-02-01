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

  def write(text)
    File.open(absolute_path, 'w') do |f|
      f.write(text.gsub("\r\n", "\n"))
    end
  end

  def absolute_path
    "#{REPO_DIR}/features/#{@name}"
  end

  def commit
    repo = Grit::Repo.new(REPO_DIR)

    Dir.chdir(repo.working_dir) do
      repo.add("features/#{@name}")
      repo.commit_index("[Gitcukes] updated #{@name}")
    end
  end

  class << self
    def load
      Dir.glob("#{REPO_DIR}/features/*.feature").map{|x| new(File.basename(x))}
    end
  end
end

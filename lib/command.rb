class Command 
  def self.run(command)
    puts `#{command}`
  end
end

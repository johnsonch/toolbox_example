class Command 
  def self.run(command)
    puts "Running: #{command}"
    puts `#{command}`
  end
end

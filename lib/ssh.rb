class SSH
  def self.command_builder(config, host, command='')
   "ssh -F #{config} #{host} '#{command}'" 
  end
end

class SSH
  def self.command_builder(config, host, command='')
   "ssh -F #{config} #{host} '#{command}'" 
  end

  def self.scp(config, host, remote_file)
    "scp -F #{config} #{host}:~/#{remote_file} ."
  end
end

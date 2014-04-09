class SSH
  def self.command_builder(config, host, command='')
   "ssh -F #{config} #{host} '#{command}'" 
  end

  def self.scp_from(config, host, remote_file)
    "scp -F #{config} #{host}:~/#{remote_file} ."
  end

  def self.scp_to(config, host, file, remote_location='')
    "scp -F #{config} #{file} #{host}:~/#{remote_location}"
  end
end

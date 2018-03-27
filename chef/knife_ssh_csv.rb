require 'csv'
require 'optionparser'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: generate csv of knife search command results"
  opts.on("-n", "--name NAME", String) do |name|
    options[:name] = name
  end

  opts.on("-c", "--command COMMAND", String) do |cmd|
    options[:command] = cmd
  end

  opts.on("-a", "--attribute Attribute", String) do |attr|
    options[:attribute] = attr
  end
end.parse!
 
knife_ssh = `knife ssh '#{options[:name]}' '#{options[:command]}' -a '#{options[:attribute]}'`

ssh_split = knife_ssh.split("\r")
ssh_split.map! do |ssh|
  ssh.split(" ", 2)
end

ssh_query = options[:name].split(":").last
home = `echo $HOME`.strip
CSV.open("#{home}/Desktop/knife-ssh-#{ssh_query}-#{options[:command]}.csv", "w",
    :write_headers => true,
    :headers => [options[:attribute], options[:command]]
  ) do |csv|
  ssh_split.each do |ssh|
    csv << ssh
  end
end

p "CSV output here: #{home}/Desktop/knife-ssh-#{ssh_query}-#{options[:command]}.csv"

require 'csv'
require 'optionparser'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: generate csv of knife search command results"
  opts.on("-i", "--index INDEX", String) do |index|
    options[:index] = index
  end

  opts.on("-s", "--search_query SEARCH", String) do |search|
    options[:search_query] = search
  end

  opts.on("-a", "--attribute ATTRIBUTE") do |attribute|
    options[:attribute] = attribute
  end
end.parse!
 
knife_search = `knife search #{options[:index]} '#{options[:search_query]}' -a #{options[:attribute]}`

search_split = knife_search.split("\n\n")
search_split.map! do |search|
  search.split("\n  #{options[:attribute]}: ")
end

search_query = options[:index].split(":").last
home = `echo $HOME`.strip
CSV.open("#{home}/Desktop/knife-search-#{search_query}-#{options[:attribute]}.csv", "w",
    :write_headers => true,
    :headers => [options[:index], options[:attribute]]
  ) do |csv|
  search_split.each do |search|
    csv << search
  end
end

p "CSV output here: #{home}/Desktop/knife-search-#{search_query}-#{options[:attribute]}.csv"

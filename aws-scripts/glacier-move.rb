require "aws-sdk-s3"

t = Time.now

client = Aws::S3::Client.new(
  region: "us-east-1"
)

objects = 0

File.open('glacier.txt', 'r').each do |key|
  key = key.strip
  puts "Changing Storage Class to STANDARD_IA - #{key}"

  object = Aws::S3::Object.new(
    bucket_name: "articulate-logs",
    key: key,
    client: client
  )

  object.copy_to(bucket: 'articulate-logs', key: key, storage_class: "STANDARD_IA")
  objects += 1
end

puts "#{objects} objects processed."
puts "Job Completed in - #{Time.at(Time.now - t).utc.strftime("%H:%M:%S")}"
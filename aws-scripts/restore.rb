require "aws-sdk-s3"

client = Aws::S3::Client.new(
  region: "us-east-1"
)

File.open('glacier.txt', 'r').each do |key|
  puts "Restoring - #{key}"

  object = Aws::S3::Object.new(
    bucket_name: "articulate-logs",
    key: "#{key.strip}",
    client: client
  )

  output = object.restore_object(restore_request: {
      days: 30,
      glacier_job_parameters: {
        tier: "Bulk"
      }
    }
  )

  puts output
end

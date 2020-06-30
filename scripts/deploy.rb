require 'yaml'

require_relative './lib/deploy'

DeployImages.new(ENV['OSS_ID'], ENV["OSS_SECRET"]).bulk_push_object
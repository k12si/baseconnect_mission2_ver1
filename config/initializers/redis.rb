require 'redis'
# uri = URI.parse(ENV["REDIS_URL"])
# uri = URI.parse("localhost:6379")
REDIS = Redis.new(url: ENV["REDIS_URL"])
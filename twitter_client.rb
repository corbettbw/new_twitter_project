# access token: 316992729-MXAAaoxT7zfyqdo02abNMJEnUfcYq2m00JMeAgEx
# access token secret: TltLatEppSWN7qMr3Ezj5QAUiOW9GJOtWQmqL3Cy2GfRS

# api key: Y7vDvBVrN28MsuKsO4QTay5bb
# api secret key: df4yBRTXH6nMQ9VVXJKo5523DpfdYctditjgsAtvm2eVE5MmZQ
# tweets = client.user_timeline('rubyinside', count: 20 )
# File.write('tweets.yml', YAML.dump(tweets))

# tweets = YAML.load_file('tweets.yml')
# tweets.each { |tweet| puts tweet.full_text }

require 'yaml'
require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "K4fckJLvqUkNsJNYV0hXAnZtf"
  config.consumer_secret     = "t2rK6AptmZM8nz2JeXSuZo9elfXH8hDZOHXPGZGLBazhwEXmCD"
  config.access_token        = "2264919367-1poBrMxyYRTciNlCeLWPUj6rWxnWWbJHigXVjdp"
  config.access_token_secret = "JA7QOQXh1K0d4BUZXhGpeNDumTLhqgobPFgla7uZZttJW"
end

client.update("#twitter_gem")
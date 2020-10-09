require 'yaml'
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["KORBOTT_KEY"]
  config.consumer_secret     = ENV["KORBOTT_SECRET"]
  config.access_token        = ENV["KORBOTT_TOKEN"]
  config.access_token_secret = ENV["KORBOTT_TOKEN_SECRET"]
end


primes = [2,3]
number = 3

client.update("2 is #prime #PrimeNumberBot")
sleep(100)

client.update("3 is #prime #PrimeNumberBot")

while primes.length > 1
  number += 2
  isprime = 0
  primes.each do |prime|
    if number % prime == 0
      isprime += 1
      break
    elsif prime >= Math.sqrt(number)
        break
    end
  end
  if isprime == 0
    sleep(100)
    client.update("#{number} is #prime #PrimeNumberBot")
    primes.push number
  end
end
puts primes

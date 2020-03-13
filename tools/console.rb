require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
twitter = Startup.new("Twitter", "Jack", "twitter.com")
facebook = Startup.new("Facebook", "Xavier", "facebook.com")
instagram = Startup.new("Instagram", "John", "instagram.com")
venture = VentureCapitalist.new("JackXavier" , 10000000000)
venture_two = VentureCapitalist.new("Reacher" , 40000000000)
funding = FundingRound.new(twitter , venture , "Series A" , 200_000)
funding_two = FundingRound.new(facebook , venture_two, "Series B" , 300_000)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

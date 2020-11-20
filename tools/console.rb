require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

  # new_startup = Startup.new("riley", "google", "google.com")
  # new_startup1 = Startup.new("riley", "subway", "google.com")
  # new_startup2 = Startup.new("marco", "att", "att.com")
  # new_startup3 = Startup.new("chris", "apple", "apple.com")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
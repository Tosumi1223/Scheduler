# coding: utf-8
require 'rubygems'
#require 'thor'
require "optparse"

options = {}

parser = OptionParser.new do |parser|
  parser.on("-p", "--part-time_job","schedule a part-time job")
  parser.on("-s", "--school","schedule a school")
  parser.on("-m", "--meeting","schedule a meeting")
  parser.on("-c", "--club","schedule a club")
  parser.on("-t", "--travel","schedule a travel")
  
  parser.on("-h", "--help", "Prints this help") do
    puts parser
    exit
  end
end

parser.parse!(into: options)
sche = options.keys

file = File.open("schedule.txt", mode = "a")
file.puts("#{ARGV[0]} #{sche[0]}")

puts("Schedule a #{sche[0]} on #{ARGV[0]}")

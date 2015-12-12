#!/usr/bin/ruby

sequence = [rand(10).floor]
puts sequence

puts "Repeat the sequence"
print '> '

answer = gets.strip.split.map { |a| a.to_i }

if answer == sequence
    puts "Correct"
else
    puts "Incorrect"
end
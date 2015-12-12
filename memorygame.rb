#!/usr/bin/ruby
sequence = []
correct = true

while correct do
    sequence.push(rand(10).floor)
    
    puts "Repeat the sequence: #{sequence.join(' ')}"
    puts "MAKE SURE TO LEAVE A SPACE AFTER EACH ANSWER!"
    print '> '
    
    answer = gets.strip.split.map { |a| a.to_i }
    
    if answer == sequence
        puts "Correct"
    else 
        correct = false
        puts "Incorrect" 
    end
end

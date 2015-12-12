#!/usr/bin/ruby

#Function sleeps for however many seconds and clears screen
def sleep_and_clear(seconds)
    sleep(seconds)
    system "clear" or system "cls"
end
    
sequence = []
correct = true

#Lays out rules of the game
puts "Repeat the sequence: Be sure to wait for the '>' to type your answer!"
puts "Repeat exactly as shown in order to progress to the next number!"

#Loop that grows until incorrect answer
while correct do
    sequence.push(rand(10).floor)
    
    puts "Repeat the sequence: #{sequence.join(' ')}"
    sleep_and_clear(3)
    print '> '
    
    #Reading answer, converting to array of integers    
    answer = gets.strip.split.map { |a| a.to_i }
    
    #Verifies answer
    if answer == sequence
        puts "Correct"
    else 
        correct = false
        puts "Incorrect. You got #{sequence.length - 1} correct." 
    end
end


require 'colorize'

# Welcome the user to your game.
puts "                             ".on_red.underline
puts "Welcome to Guess the Number!".yellow
puts "                             ".on_red.underline

# Ask the user to enter their name and greet them.
puts " "
print  "Please, enter your name: "
first_name = gets.chomp
# Choose the desired difficulty level.
puts " "
puts "Hello, #{first_name}! Thank you for trying out the game!"

game = "playing"  # "or quit"

while game == "playing"

    
            #Levels
            puts " "
            puts "   Choose the level of difficulty:  ".blue
            puts " "
            puts "           VERY EASY".cyan
            puts "              EASY".green
            puts "             MEDIUM".yellow
            puts "            DIFFICULT".magenta
            puts "         VERY DIFFICULT".red
            puts " "
            puts "(If you wish to stop playing, simply type: quit)"
            puts " "

            #User Pick Level
            level = gets.chomp.downcase

            #Player Quiting
            if level == "quit" 
                game = "quit"
                puts " "
                puts "Thanks for playing! Please play again later!".green
            end

            #Very Easy Level: Unlimited Tries
            while level == "very easy" do
                x = 1
                number = rand(10)+1
                puts " "
                puts "You've chosen a #{level} level!".cyan
                puts " "
                print "You have unlimited tries to pick a number between 1 to 10: "

                while x < 2
                    guess = gets.chomp.to_i
                    if guess > 10 || guess < 1
                        print "Please only choose a number between 1 to 10: ".cyan
                    elsif guess < number
                        print  "The number is bigger than your guess! Try again: ".cyan
                    elsif guess > number
                        print  "The number is lower than your guess! Try again: ".cyan
                    else
                        puts " "
                        puts "Congrats! You guessed the right number!"
                        puts "The answer was #{number}!"
                        print "Would you like to replay this level again?(yes/no) "
                        reply = gets.chomp.downcase
                        if reply == "yes"
                            puts "Let's play again (Press Enter)"
                            number = rand(10)+1
                        elsif reply == "no"
                            puts "Type C to change level or type S to stop the game"
                            answer = gets.chomp.downcase
                            if answer == "c"
                                game = "playing"
                                x = 3
                                level = 0
                            else answer = "s"
                                x = 3
                                level = 0
                                game = "stop"
                            end
                        end
                    end
                end
            end

            # EASY LEVEL: 1 to 10, 5 tries
            i = 0
            y = 5

            while level == "easy" && i < y do
                puts "You've chosen a #{level} level!".green
                number = rand(10)+1

                print "You have 5 tries to pick a number between 1 to 10: "
                while i < y do
                    guess = gets.chomp.to_i
                    i+=1

                    if guess > 10 || guess < 1
                        puts "Please only choose a number between 1 to 10"
                        if i < y
                            print "You have ", y-i, " tries to pick a number between 1 to 10: "
                        else
                            puts "Sorry! You have 0 guesses left!".green
                            puts "The answer was #{number}!".green
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(10)+1
                                i = -1
                            elsif reply == "no"
                                i = y
                            end
                        end
                    elsif guess < number
                        puts "The number is bigger than your guess!".green
                        if i < y
                            print "You have ", y-i, " tries to pick a number between 1 to 10: "
                        else
                            puts "Sorry! You have 0 guesses left!".green
                            puts "The answer was #{number}!".green
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(10)+1
                                i = -1
                            elsif reply == "no"
                                i = y
                            end
                        end
                    elsif guess > number
                        puts "The number is lower than your guess!".green
                        if i < y
                            print "You have ", y-i, " tries to pick a number between 1 to 10: "
                        else
                            puts "Sorry! You have 0 guesses left!".green
                            puts "The answer was #{number}!".green
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(10)+1
                                i = -1
                            elsif reply == "no"
                                i = y
                            end
                        end
                    else
                        puts "Congrats! You guessed the right number!".green
                        print "Would you like to replay this level again?(yes/no)"
                        reply = gets.chomp.downcase
                        if reply == "yes"
                            puts "Let's play again (Press Enter)"
                            number = rand(10)+1
                            i = -1
                        elsif reply == "no"
                            i = y
                        end
                    end
                end
            end

            # Medium: 1 to 100, 6 tries

            a = 0
            b = 6

            while level == "medium" && a < b do
                puts "You've chosen a #{level} level!".yellow
                number = rand(100)+1

                print "You have 6 tries to pick a number between 1 to 100: "
                while a < b do
                    guess = gets.chomp.to_i
                    a+=1

                    if guess > 100 || guess < 1
                        puts "Please only choose a number between 1 to 100"
                        if a < b
                            print "You have ", b-a, " tries to pick a number between 1 to 100: "
                        else
                            puts "Sorry! You have 0 guesses left!".yellow
                            puts "The answer was #{number}!".yellow
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(100)+1
                                a = -1
                            elsif reply == "no"
                                a = b
                            end
                        end
                    elsif guess < number
                        puts "The number is bigger than your guess!".yellow
                        if a < b
                            print "You have ", b-a, " tries to pick a number between 1 to 100: "
                        else
                            puts "Sorry! You have 0 guesses left!".yellow
                            puts "The answer was #{number}!".yellow
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(100)+1
                                a = -1
                            elsif reply == "no"
                                a = b
                            end
                        end
                    elsif guess > number
                        puts "The number is lower than your guess!".yellow
                        if a < b
                            print "You have ", b-a, " tries to pick a number between 1 to 100: "
                        else
                            puts "Sorry! You have 0 guesses left!".yellow
                            puts "The answer was #{number}!".yellow
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(100)+1
                                a = -1
                            else
                                a = b
                            end
                        end
                    else
                        puts "Congrats! You guessed the right number!".yellow
                        puts "The answer was #{number}!".yellow
                        print "Would you like to replay this level again?(yes/no)"
                        reply = gets.chomp.downcase
                        if reply == "yes"
                            puts "Let's play again (Press Enter)"
                            number = rand(100)+1
                            a = -1
                        else 
                            a = b
                        end
                    end
                end
            end

            # Difficult: 1 to 500, 8 tries

           c = 0
           d = 8

           while level == "difficult" && c < d do
               puts "You've chosen a #{level} level!".magenta
               number = rand(500)+1

               print "You have 8 tries to pick a number between 1 to 500: "
               while c < d do
                   guess = gets.chomp.to_i
                   c+=1

                   if guess > 500 || guess < 1
                       puts "Please only choose a number between 1 to 500"
                       if c < d
                           print "You have ", d-c, " tries to pick a number between 1 to 500: "
                       else
                           puts "Sorry! You have 0 guesses left!".magenta
                           puts "The answer was #{number}!".magenta
                           print "Would you like to replay this level again?(yes/no)"
                           reply = gets.chomp.downcase
                           if reply == "yes"
                               puts "Let's play again (Press Enter)"
                               number = rand(500)+1
                               c = -1
                           else
                               c = d
                           end
                       end
                   elsif guess < number
                       puts "The number is bigger than your guess!".magenta
                       if c < d
                           print "You have ", d-c, " tries to pick a number between 1 to 500: "
                       else
                           puts "Sorry! You have 0 guesses left!".magenta
                           puts "The answer was #{number}!".magenta
                           print "Would you like to replay this level again?(yes/no)"
                           reply = gets.chomp.downcase
                           if reply == "yes"
                               puts "Let's play again (Press Enter)"
                               number = rand(500)+1
                               c = -1
                           else
                               c = d
                           end
                       end
                   elsif guess > number
                       puts "The number is lower than your guess!".magenta
                       if c < d
                           print "You have ", d-c, " tries to pick a number between 1 to 500: "
                       else
                           puts "Sorry! You have 0 guesses left!".magenta
                           puts "The answer was #{number}!".magenta
                           print "Would you like to replay this level again?(yes/no)"
                           reply = gets.chomp.downcase
                           if reply == "yes"
                               puts "Let's play again (Press Enter)"
                               number = rand(500)+1
                               c = -1
                           else
                               c = d
                           end
                       end
                   else
                       puts "Congrats! You guessed the right number!".magenta
                       puts "The answer was #{number}!".magenta
                       print "Would you like to replay this level again?(yes/no)"
                       reply = gets.chomp.downcase
                       if reply == "yes"
                           puts "Let's play again (Press Enter)"
                           number = rand(500)+1
                           c = -1
                       else
                           c = d
                       end
                   end
               end
           end

            # Very Difficult: 1 to 1000, 9 tries

            c = 0
            d = 9
 
            while level == "very difficult" && c < d do
                puts "You've chosen a #{level} level!".red
                number = rand(1000)+1
 
                print "You have ", d, " tries to pick a number between 1 to 1000: "
                while c < d do
                    guess = gets.chomp.to_i
                    c+=1
 
                    if guess > 1000|| guess < 1
                        puts "Please only choose a number between 1 to 1000"
                        if c < d
                            print "You have ", d-c, " tries to pick a number between 1 to 1000: "
                        else
                            puts "Sorry! You have 0 guesses left!".red
                            puts "The answer was #{number}!".red
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(1000)+1
                                c = -1
                            elsif reply == "no"
                                c = d
                            end
                        end
                    elsif guess < number
                        puts "The number is bigger than your guess!".red
                        if c < d
                            print "You have ", d-c, " tries to pick a number between 1 to 1000: "
                        else
                            puts "Sorry! You have 0 guesses left!".red
                            puts "The answer was #{number}!".red
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(1000)+1
                                c = -1
                            else
                                c = d
                            end
                        end
                    elsif guess > number
                        puts "The number is lower than your guess!".red
                        if c < d
                            print "You have ", d-c, " tries to pick a number between 1 to 1000: "
                        else
                            puts "Sorry! You have 0 guesses left!".red
                            puts "The answer was #{number}!".red
                            print "Would you like to replay this level again?(yes/no)"
                            reply = gets.chomp.downcase
                            if reply == "yes"
                                puts "Let's play again (Press Enter)"
                                number = rand(1000)+1
                                c = -1
                            else
                                c = d
                            end
                        end
                    else
                        puts "Congrats! You guessed the right number!".red
                        puts "The answer was #{number}!".red
                        print "Would you like to replay this level again?(yes/no)"
                        reply = gets.chomp.downcase
                        if reply == "yes"
                            puts "Let's play again (Press Enter)"
                            number = rand(1000)+1
                            c = -1
                        else
                            c = d
                        end
                    end
                end
            end

end




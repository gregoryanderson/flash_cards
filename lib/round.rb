require 'pry'


class Round 

    attr_accessor :guess, :card

        def initialize(guess, card)
            @guess = guess
            @card = card
        end

        def correct? 
            feedback == "Correct!"
        end 

        def feedback
            if @guess == @card.answer
            "Correct!"
            else
            "Sorry.."
        end
    end
end
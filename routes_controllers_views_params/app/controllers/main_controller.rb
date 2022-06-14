class MainController < ApplicationController
    def home
    end

    def stephen
    end

    def geovanna
    end

    def cubed
        number1 = params[:number1]
        @number_cubed = number1.to_i ** 3
    end

    def evenly
        number1 = params[:number1]
        number2 = params[:number2]
        @even_number = number1.to_i % number2.to_i === 0 ? "#{number1} is evenly divisible by #{number2}" : "#{number1} is not evenly divisible by #{number2}"
        # if(number1 % number 2 === 0){
        #     "#{number1} is evenly divisible by #{number2}"
        # }else{
        #     "#{number1} is not evenly divisible by #{number2}"
        # }
    end

    def palindrome
        string = params[:string]
        @word = 
        if string.downcase === string.downcase.reverse
           "#{string} is a palindrome"
        else
            "#{string} is not a palindrome"
        end
    end
    def madlib
        noun = params[:noun]
        verb = params[:verb]
        adverb = params[:adverb]
        adjective = params[:adjective]
        @story = "One of my wife's third graders was wearing a #{noun}, which prompted my wife to ask, 'Are you tracking your #{verb}?' 'No,' said the #{adverb} girl. 'I wear this for Mommy so she can show Daddy when he gets home. Daddy is #{adjective} than Mommy.'"
    end

end

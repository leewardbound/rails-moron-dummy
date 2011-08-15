class ThinkingOf < ActiveRecord::Base
    validates_numericality_of :number, :less_than_or_equal_to => 10, :greater_than_or_equal_to => 1
    has_many :moron_guesses
    after_save :start_guessing
    def guessed
        if self.moron_guesses.count == 0
            return 'Nope'
        else
            return "#{self.moron_guesses.count} tries"
        end
    end

    def bg_start_guessing
        self.delay.start_guessing
    end
    def start_guessing
        guess = 0
        self.moron_guesses.delete_all
        while guess != self.number do
            sleep(1)
            guess = 1+rand(10)
            puts "Durrr, is it #{guess}?"
            guess_obj = MoronGuess.new(:thinking_of => self,
                                       :guess => guess)
            self.moron_guesses << guess_obj
        end
        puts 'Moron guesses:',self.moron_guesses.count
    end
end

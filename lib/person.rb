require 'pry'
# your code goes here
class Person
    # attr_writer :happiness, 
    attr_reader :name 
    attr_accessor :happiness, :bank_account
    
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
    end
    def hygiene
        @hygiene
    end
    #-------
    def hygiene
        if @hygiene > 10 
            return 10
        end
        if @hygiene < 0
            return 0
        end
        return @hygiene
    end
    #-------
    def happiness
        if @happiness > 10 
            return 10
        end
        if @happiness < 0
            return 0
        end    
    return @happiness
    end
    #-------
    def bank_account
        return @bank_account
    end
    #-------
    def happy?
        if @happiness > 7
            return true
        end
        return false
    end
    #-------
    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end
    #-------
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    #-------
    def take_bath
        @hygiene += 4
        if @hygiene > 10
            hygiene
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    #-------
    def work_out
        @hygiene -= 3
        if @hygiene < 0
            hygiene
        end
        @happiness += 2
        if @happiness > 10
            happiness
        end
        return "♪ another one bites the dust ♫"
    end
    #-------
    def call_friend(name)
        @happiness += 3
        name.happiness += 3
        if @happiness > 10
            happiness
        end
        if name.happiness > 10
            happiness
        end
        return "Hi #{name}! It's #{@name}. How are you?"
    end
    kanye = Person.new("kanye")
    kanye.take_bath
end
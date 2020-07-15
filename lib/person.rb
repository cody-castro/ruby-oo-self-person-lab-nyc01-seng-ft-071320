require 'pry'
# your code goes here
class Person
    # attr_writer :happiness, 
    attr_reader :name 
    attr_accessor :happiness, :hygiene, :bank_account
    
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end


    def hygiene
        if @hygiene > 10 
            return 10
        end
           if @hygiene < 0
            return 0
    end
        # if @hygiene > 7
        #     return true
        # end
        return @hygiene
    end

    def happiness
        if @happiness > 10 
            return 10
        end
           if @happiness < 0
            return 0
    end
        # if @happiness > 7 
        #     return true
        # end
        return @happiness
    end


# kanye = Person.new("Kanye") 
    # binding.pry

    def bank_account
        return @bank_account

    end

end
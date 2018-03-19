require 'pry'
# your code goes here

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)

    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(point)

    if point > 10
      @happiness = 10
    elsif point < 0
      @happiness = 0
    else
      @happiness = point
    end

  end


    def hygiene=(point)

      if point > 10
        @hygiene = 10
      elsif point < 0
        @hygiene = 0
      else
        @hygiene = point
      end

    end

    def happy?
      @happiness > 7
    end

    def clean?
      @hygiene > 7
    end

    def get_paid(amt)
      @bank_account += amt
      "all about the benjamins"
    end

    def take_bath
      # binding.pry
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end

    def call_friend(name)
      self.happiness += 3
      name.happiness += 3
      "Hi #{name.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(name, topic)
      if topic == "politics"

        self.happiness -= 2
        name.happiness -= 2
        'blah blah partisan blah lobbyist'
      elsif topic == "weather"
        self.happiness += 1
        name.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end

    end



end

# binding.pry

puts "a"

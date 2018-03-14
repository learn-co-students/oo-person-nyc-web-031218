# your code goes here
require 'pry'
class Person
attr_reader :happiness, :name, :hygiene, :bank_account

  def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end

  def bank_account=(amt)
  @bank_account += amt
  end

    # def happiness
    #   @happiness
    # end

    def happiness=(pts)
      if pts <= 10 && pts >= 0
        @happiness = pts
      elsif pts > 10
        @happiness = 10
      elsif pts < 0
        @happiness = 0
      end
    end

    def hygiene=(pts)
      if pts <= 10 && pts >= 0
        @hygiene = pts
      elsif pts > 10
        @hygiene = 10
      elsif pts < 0
        @hygiene = 0
      end
    end

    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end

    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end

    def get_paid(salary)
      @bank_account += salary
      "all about the benjamins"
    end

    def take_bath
      #hygiene=(@hygiene + 4)
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end

    def call_friend(person)
      #person = Person.new(person)
      self.happiness += 3
      person.happiness += 3
      #if self.name == "Stella" && person.name == "Felix"
      #  "Hi Felix. It's Stella! How are you?"
      #end
      "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee, topic)
      if topic == "politics"
        self.happiness -= 2
        callee.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        callee.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end

end

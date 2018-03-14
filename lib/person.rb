# your code goes here
require 'pry'

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end


  def happiness=(new_happiness)
    @happiness = new_happiness
    if @happiness > 10
      return @happiness = 10
    elsif @happiness < 0
      return @happiness = 0
    else
      @happiness
    end
  end

    def hygiene=(new_hygiene)
      @hygiene = new_hygiene
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene <=0
        @hygiene = 0
      else
        @hygiene
      end
    end


  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

 def clean?
   if @hygiene > 7
     return true
   else
     false
   end
 end

 def get_paid(salary)
   @bank_account += salary
   return "all about the benjamins"
 end

 def take_bath
   self.hygiene += 4
   return "♪ Rub-a-dub just relaxing in the tub ♫"
 end

  def work_out
    
    self.hygiene -= 3
    hygiene=(@hygiene)
    self.happiness += 2
    "♪ another one bites the dust ♫"

  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"

    # happiness=(person.happiness)
    # happiness=(@happiness)
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else
      "blah blah blah blah blah"
    end

  end


end

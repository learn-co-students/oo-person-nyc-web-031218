require 'pry'
class Person
  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def happiness= (person_happiness)
    if person_happiness > 10
      @happiness = 10
    elsif person_happiness < 0
      @happiness = 0
    else
      @happiness = person_happiness
    end
  end

  def hygiene= (person_hygiene)
      if person_hygiene > 10
        @hygiene = 10
      elsif person_hygiene < 0
        @hygiene = 0
      else
        @hygiene = person_hygiene
      end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness += 2 )
    self.hygiene=(@hygiene -= 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end

end

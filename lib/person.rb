#ROGER
require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name=name
    @bank_account = bank_account
    @happiness= happiness
    @hygiene = hygiene
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def happiness=(points)
    @happiness= points
    if @happiness>10
      return @happiness=10
    elsif @happiness<0
      return @happiness=0
    else
      return @happiness
    end
  end

  def hygiene=(points)
    @hygiene= points
    if @hygiene>10
      return @hygiene=10
    elsif @hygiene<0
      return @hygiene=0
    else
      return @hygiene
    end
  end

  def happy?(happiness = @happiness)

    if @happiness >7
      true
    else
      false
    end
  end
  def clean?(clean = @hygiene)

    if @hygiene >7
      true
    else
      false
    end
  end

  def take_bath
    # binding.pry
    self.hygiene+=4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    # binding.pry
    if self.name=="Stella"
      return "Hi #{self.name}! It's #{friend.name} How are you?"
    else
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness-=2
      friend.happiness-=2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness+=1
      friend.happiness+=1
      return "blah blah sun blah rain"
    else
      @happiness
      return "blah blah blah blah blah"
    end
  end

  # If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
  # If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
  # If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".







end

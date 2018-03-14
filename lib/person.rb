require "pry"

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(amt_happy)
    @happiness = amt_happy
    if @happiness > 10
      @happiness = 10
    end

    if @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(amt_hygiene)
    @hygiene = amt_hygiene
    if @hygiene > 10
      @hygiene = 10
    end

    if @hygiene < 0
      @hygiene = 0
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(money)
    @bank_account += money
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    "♪ another one bites the dust ♫"
  end
end

class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader(:name)
  attr_accessor(:happiness, :hygiene, :bank_account)

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def happiness=(new_happiness)
    if new_happiness <= 10 && new_happiness >= 0
      @happiness = new_happiness
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = 10
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene <= 10 && new_hygiene >= 0
      @hygiene = new_hygiene
    elsif new_hygiene > 10
      @hygiene = 10
    else
      @hygiene = 0
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
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

end

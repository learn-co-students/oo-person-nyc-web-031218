class Person

	attr_accessor :bank_account
	attr_reader :name, :hygiene, :happiness

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end


	def happy?
		self.happiness > 7
	end


	def clean?
		self.hygiene > 7
	end


	def get_paid(salary)
		self.bank_account += salary
		"all about the benjamins"
	end

	def hygiene=(new_hygiene)
		if new_hygiene >= 0 && new_hygiene <= 10
			@hygiene = new_hygiene
		elsif new_hygiene > 10
			@hygiene = (new_hygiene = 10)
		elsif new_hygiene < 0
			@hygiene = (new_hygiene = 0)
		end
	end

	def happiness=(new_happiness)
		if new_happiness >= 0 && new_happiness <= 10
			@happiness = new_happiness
		elsif new_happiness > 10
			@happiness = (new_happiness = 10)
		elsif new_happiness < 0
			@happiness = (new_happiness = 0)
		end
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -=3
		self.happiness += 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness +=3
		friend.happiness +=3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			person.happiness -= 2
			self.happiness -=2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			person.happiness +=1
			self.happiness +=1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end


end

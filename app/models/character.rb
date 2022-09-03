class Character < ActiveRecord::Base
  # #actor: should return the actor instance this character belongs to.
  # Hint: is there an association macro you can use to create this method?
  # NOTE: By using 'belongs_to :actor', this will create a '#actor' method
  # that associates the 'characters' table to the 'actors' table
  # NOTE: Not to be confusing but we are associating the 'Character' class
  # to the 'Actor' class hence the singular usage here of the ':actor' symbol:
  belongs_to :actor
  #show: should return the show instance this character belongs to.
  # Hint: is there an association macro you can use to create this method?
  belongs_to :show
  #say_that_thing_you_say:
  # Define a method in the Character class, #say_that_thing_you_say, using a given character's catchphrase.
  # Using Tyrion as an example again, the returned string should look like the following
  # tyrion.catchphrase = 'A Lannister always pays his debts'
  # tyrion.say_that_thing_you_say
  # => 'Tyrion Lannister always says: A Lannister always pays his debts'
  def say_that_thing_you_say()
    # First Attempt:
    # puts catchphrase
    # NOTE: Would have never figured this out, terrible hint -->
    "#{self.name} always says: #{self.catchphrase}"
  end
end

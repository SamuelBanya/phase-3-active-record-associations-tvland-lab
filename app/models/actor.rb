class Actor < ActiveRecord::Base
  # #characters: an actor has many characters, so write code that creates an instance method
  # that will return all the characters that the actor has played.
  # Hint: is there an association macro you can use to create this method?
  has_many :characters
  # #shows: an actor should have many characters and many shows through characters.
  # Write code that creates an instance method that returns all the shows for the actor.
  # Hint: is there an association macro you can use to create this method?
  has_many :shows, through: :characters

  # #full_name: Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
  def full_name()
    # First Attempt:
    # full_name = self.first_name + " " + self.last_name
    # full_name
    # More elegant solution:
    "#{self.first_name} #{self.last_name}"
  end

  # #list_roles: Write a method in the Actor class, #list_roles, that lists all of the characters
  # that actor has alongside the show that the character is in.
  def list_roles()
    # First attempt:
    # self.characters.all().each do |character|
    # "#{character.name} - #{character.show}"
    # end
    self.characters.map() do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end

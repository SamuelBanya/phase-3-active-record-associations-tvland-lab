class Show < ActiveRecord::Base
  # #characters: should return a list of all the character instances associated with the show.
  has_many :characters
  # NOTE: This was included for the '#actors_list' method's relationship to the 'Show' class below:
  # First Attempt:
  # has_many :actors, through: :show
  has_many :actors, through: :characters

  # #network: should return the network instance this show belongs to
  belongs_to :network

  # #actors_list: Define a method in the Show class called #actors_list that returns an Array
  # of the full names of each actor associated with a show.
  # Remember, a show should have many actors through characters.
  # Hint: it may help to use another association macro to access the actors for the show
  def actors_list()
    # First Attempt:
    # self.actors.show.all()
    # Second Attempt:
    # self.actors.map do |actor|
    # actor.show.name
    # end
    self.actors.map do |actor|
      actor.full_name()
    end
  end
end

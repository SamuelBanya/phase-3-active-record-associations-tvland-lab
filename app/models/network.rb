class Network < ActiveRecord::Base
  # #shows: should return a list of all the show instances associated with the network.
  has_many :shows
  # #sorry: returns a string "We're sorry about passing on John Mulaney's pilot".
  def sorry()
    "We're sorry about passing on John Mulaney's pilot"
  end
end

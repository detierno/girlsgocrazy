class Event < ActiveRecord::Base
  attr_accessible :name

  has_many :topics

  validates :name, presence: true
end

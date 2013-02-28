class Event < ActiveRecord::Base
  attr_accessible :name

  has_many :topics
  has_and_belongs_to_many :users

  validates :name, presence: true
end

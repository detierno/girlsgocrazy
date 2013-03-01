class Event < ActiveRecord::Base
  attr_accessible :name

  has_many :topics
  has_many :items
  has_and_belongs_to_many :users
  has_one :owner, :class_name => "User", :foreign_key => "id"

  validates :name, presence: true
end

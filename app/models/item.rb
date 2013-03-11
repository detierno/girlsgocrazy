class Item < ActiveRecord::Base
  attr_accessible :amount, :title, :value, :user_id

  validates :amount, :title, :value, presence: true

  belongs_to :event
  belongs_to :user
end

class Topic < ActiveRecord::Base
  attr_accessible :title

  validates :title, presence: true
  belongs_to :event
  has_many :messages, dependent: :destroy
end

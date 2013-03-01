class Item < ActiveRecord::Base
  belongs_to :event
  attr_accessible :amount, :title, :value
end

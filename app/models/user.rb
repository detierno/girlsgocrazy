class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :nick, :remember_me
  # attr_accessible :title, :body

  has_many :messages
  has_many :items
  has_many :owned_events, :class_name => "Event", :foreign_key => "owner_id"
  has_and_belongs_to_many :events
end

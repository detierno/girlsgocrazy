class Message < ActiveRecord::Base
  attr_accessible :body, :title, :user_id, :topic_id

  validates :body, :user_id, :topic_id, presence: true

  default_scope order('created_at ASC')

  belongs_to :topic
  belongs_to :user
end

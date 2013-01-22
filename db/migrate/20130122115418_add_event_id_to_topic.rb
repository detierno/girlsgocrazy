class AddEventIdToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :event_id, :integer
    add_index :topics, :event_id
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :amount
      t.float :value
      t.references :event

      t.timestamps
    end
    add_index :items, :event_id
  end
end

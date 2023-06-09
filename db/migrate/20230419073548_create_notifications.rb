class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :inventory, null: false, foreign_key: true
      t.integer :status
      t.text :message

      t.timestamps
    end
  end
end

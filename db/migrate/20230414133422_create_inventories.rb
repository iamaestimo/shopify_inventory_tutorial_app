class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.jsonb :details

      t.timestamps
    end
  end
end

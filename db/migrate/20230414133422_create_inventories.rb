class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :title
      t.text :body_html
      t.string :vendor
      t.string :status
      t.string :product_type
      t.string :handle # the product url
      t.datetime :edited_at
      t.datetime :published_at

      t.timestamps
    end
    add_index :inventories, :title
  end
end
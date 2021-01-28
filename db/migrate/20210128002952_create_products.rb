class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.float :views
      t.float :numbids
      t.string :winner
      t.text :tags
      t.binary :image

      t.timestamps
    end
    add_index :products, :name
  end
end

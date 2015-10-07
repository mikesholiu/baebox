class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :handle
      t.string :image
      t.boolean :featured
      
      t.timestamps null: false
    end
  end
end

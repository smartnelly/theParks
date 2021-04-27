class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :name
      t.integer :price
      t.text :brand
      t.text :description
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateCategoriesItems < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_items do |t|
      t.integer :category_id
    end
  end
end

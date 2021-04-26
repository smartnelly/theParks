class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.text :email
      t.text :password_digest
      t.string :mobile
      t.text :street
      t.text :suburb
      t.string :city
      t.string :country
      t.string :postcode

      t.timestamps
    end
  end
end

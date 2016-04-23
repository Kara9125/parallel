class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :password_digest
      t.string :website
      t.string :date_of_birth
      t.string :location

      t.timestamps null: false
    end
  end
end

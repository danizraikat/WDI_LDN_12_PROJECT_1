class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :role
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :gender
      t.string :tel_number

      t.timestamps null: false
    end
  end
end

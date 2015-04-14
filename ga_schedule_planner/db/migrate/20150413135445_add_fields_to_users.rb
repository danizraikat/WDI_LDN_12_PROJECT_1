class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :password_confirmation, :string
    add_column :users, :gender, :string
    add_column :users, :tel_number, :string
  end
end

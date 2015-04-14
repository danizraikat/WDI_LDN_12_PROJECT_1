class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.text :address

      t.timestamps null: false
    end
  end
end

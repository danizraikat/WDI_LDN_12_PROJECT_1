class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :name
      t.text :address

      t.timestamps null: false
    end
  end
end

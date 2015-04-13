class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :course_id
      t.boolean :paid

      t.timestamps null: false
    end
  end
end

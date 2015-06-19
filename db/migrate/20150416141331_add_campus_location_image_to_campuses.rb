class AddCampusLocationImageToCampuses < ActiveRecord::Migration
  def change
    add_column :campuses, :campus_location_image, :string
  end
end

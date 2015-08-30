class AddDescriptionToPreviews < ActiveRecord::Migration
  def change
    add_column :previews, :description, :text
  end
end

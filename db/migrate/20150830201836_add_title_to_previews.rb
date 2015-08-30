class AddTitleToPreviews < ActiveRecord::Migration
  def change
    add_column :previews, :title, :string
  end
end

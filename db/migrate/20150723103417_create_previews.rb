class CreatePreviews < ActiveRecord::Migration
  def change
    create_table :previews do |t|

      t.timestamps null: false
    end
  end
end

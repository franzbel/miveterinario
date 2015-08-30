class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end

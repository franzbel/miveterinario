class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :clinic
      t.string :doctor
      t.string :address
      t.integer :phone
      t.integer :cell
      t.string :email
      t.string :web

      t.timestamps null: false
    end
    add_index :partners, :email, unique: true
  end
end

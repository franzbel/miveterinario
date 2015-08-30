class AddAttachmentAvatarToMagazines < ActiveRecord::Migration
  def self.up
    change_table :magazines do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :magazines, :avatar
  end
end

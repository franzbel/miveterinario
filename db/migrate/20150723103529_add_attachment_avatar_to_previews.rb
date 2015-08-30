class AddAttachmentAvatarToPreviews < ActiveRecord::Migration
  def self.up
    change_table :previews do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :previews, :avatar
  end
end

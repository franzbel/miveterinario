class AddAttachmentAvatarToPages < ActiveRecord::Migration
  def self.up
    change_table :pages do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :pages, :avatar
  end
end

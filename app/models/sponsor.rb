class Sponsor < ActiveRecord::Base
  has_attached_file :avatar, 
  					:storage => :dropbox,
  					:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  					:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  					:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end

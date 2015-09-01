class Page < ActiveRecord::Base
  belongs_to :magazine
  has_attached_file :avatar, 
  					:storage => :dropbox,
  					:dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
  					:styles => {:large => "565x600>", :medium => "300x300>", :thumb => "100x100>" }, 
  					:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end

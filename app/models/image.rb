class Image < ActiveRecord::Base
  belongs_to :user
  # validates :title, :presence => true
  validates :user_id, :presence => true
  validates :title, :presence => true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#"}, :default_url => "/images/:style/missing.png"


  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

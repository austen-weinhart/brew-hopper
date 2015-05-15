class Brewer < ActiveRecord::Base
  has_many :beers

  validates :brewery, presence: true
  validates :website, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
 
  has_attached_file :image, styles: { :large => "600x600", :medium => "300x300", :thumb => "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end

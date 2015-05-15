class Brewer < ActiveRecord::Base
  has_many :beers

  validates :brewery, presence: true
  validates :website, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
 


end

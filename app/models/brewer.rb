class Brewer < ActiveRecord::Base
  has_many :beers

  validates :brewery, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

end

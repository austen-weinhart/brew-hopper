class Brewer < ActiveRecord::Base
  has_many :beers

  validates :brewery, presence: true
<<<<<<< HEAD
  validates :website, presence: true
  validates :address, presence: true
  # validates :state, presence: true
=======
  validates :address, presence: true
>>>>>>> master
  validates :zip_code, presence: true
  validates :website, presence: true


end

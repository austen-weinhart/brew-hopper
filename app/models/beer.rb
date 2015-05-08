class Beer < ActiveRecord::Base
  validates :name, presence: true
  # validates :abv, presence: true

  has_many :reviews
  belongs_to :style
  belongs_to :brewer
end

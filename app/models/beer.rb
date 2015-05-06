class Beer < ActiveRecord::Base
  has_many :reviews
  belongs_to :style
  belongs_to :brewer
end

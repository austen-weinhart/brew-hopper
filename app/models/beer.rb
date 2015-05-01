class Beer < ActiveRecord::Base
  has_many :reviews
  belongs_to :brewer
end

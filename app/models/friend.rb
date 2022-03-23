class Friend < ApplicationRecord
  has_many :good_deeds
  has_many :bad_deeds
end

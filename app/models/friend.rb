class Friend < ApplicationRecord
  has_many :good_deeds, :bad_deeds
end

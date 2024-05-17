class Note < ApplicationRecord
  belongs_to :software
  belongs_to :subsoftware
  belongs_to :activity
end

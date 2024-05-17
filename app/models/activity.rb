class Activity < ApplicationRecord
    has_one_attached :symbol
    validates :symbol, presence: true
end

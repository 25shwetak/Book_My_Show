class Show < ApplicationRecord
    has_many :bookings

    belongs_to :movie
    belongs_to :screen
end

class Booking < ApplicationRecord
    has_many :seats

    belongs_to :show
end

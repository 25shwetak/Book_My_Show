class Seat < ApplicationRecord
    belongs_to :booking, optional: true
end

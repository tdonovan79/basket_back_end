class Sale < ApplicationRecord
    belongs_to :check
    belongs_to :product
end

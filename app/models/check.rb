class Check < ApplicationRecord
    has_many :sales
    has_many :products, through: :sales
    belongs_to :employee
end

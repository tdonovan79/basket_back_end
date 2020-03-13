class Check < ApplicationRecord
    has_many :sales
    belongs_to :employee
end

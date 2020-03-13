class Employee < ApplicationRecord
    has_many :checks
    has_many :payments, through: :checks
    has_secure_password
end

class EmployeeSerializer < ActiveModel::Serializer
    attributes :login, :name, :items

    has_many :checks
    
end
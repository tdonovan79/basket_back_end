class CheckSerializer < ActiveModel::Serializer
    attributes :open, :created_at, :id, :employee_id, :sales
    has_many :products
end
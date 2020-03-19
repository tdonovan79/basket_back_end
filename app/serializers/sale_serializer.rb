class SaleSerializer < ActiveModel::Serializer
    attributes :created_at, :product_id, :check_id
end
class SaleSerializer < ActiveModel::Serializer
    attributes :created_at

    belongs_to :product, :check
end
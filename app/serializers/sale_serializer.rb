class SaleSerializer < ActiveModel::Serializer
    attributes :created_at, :product_id, :product_name

    def product_name
        self.product.name
    end
end
class ProductSerializer < ActiveModel::Serializer
    attributes :name, :price, :tax, :id

    has_many :sales
end
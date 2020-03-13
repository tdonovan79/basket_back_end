class ProductSerializer < ActiveModel::Serializer
    attributes :name, :price, :tax

    has_many :sales
end
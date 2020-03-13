class PaymentSerializer < ActiveModel::Serializer
    attributes :amount, :credit, :last_four, :stripe_id, :created_at

    belongs_to :check
end
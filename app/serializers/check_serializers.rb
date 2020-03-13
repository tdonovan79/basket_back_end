class CheckSerializer < ActiveModel::Serializer
    attributes :open, :created_at

    belongs_to :employee
    has_many :sales, :payments

#     def items
#         this.object.checks
#     end
# end
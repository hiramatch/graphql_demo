Types::AddressType = GraphQL::ObjectType.define do
 #  types.XXXX lib内で定義
  name "Address"
  field :id, !types.ID
  field :postal_code, !types.Int
  field :address, !types.String
end

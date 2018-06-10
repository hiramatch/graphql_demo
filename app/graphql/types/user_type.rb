Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :address, !Types::AddressType  # 追加する
  connection :posts, !Types::PostType.connection_type  # 追加する
end

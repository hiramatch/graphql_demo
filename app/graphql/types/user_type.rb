Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, !types.ID, 'ユニークなID'
  field :name, !types.String, '名前'
  field :email, !types.String, 'メールアドレス'
  field :address, !Types::AddressType, '住所'
  connection :posts, !Types::PostType.connection_type, '投稿一覧'
end

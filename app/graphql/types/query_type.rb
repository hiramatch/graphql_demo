Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end
  field :user, !Types::UserType do
    resolve ->(_obj, _args, ctx) {
      # データを取得するロジックをじっそうする
      # objはオブジェクト自身, ctxは重要情報
      ctx[:current_user]
    }
  end
end

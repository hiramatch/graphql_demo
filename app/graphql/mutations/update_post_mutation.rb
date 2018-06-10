Mutations::UpdatePostMutation = GraphQL::Relay::Mutation.define do
  name "UpdatePostMutation"
  input_field :id, !types.ID
  input_field :subject, !types.String

  return_field :post, !Types::PostType

  resolve ->(obj, args, ctx) {
    begin
      post = ctx[:current_user].posts.find(args.id)
      post.subject = args.subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end
    {post: post}
  }
end

Mutations::CreatePostMutation = GraphQL::Relay::Mutation.define do
  name "CreatePostMutation"

  # input_field :subject, !types.String
  input_field :subject, !types.String

  return_field :post, Types::PostType

  resolve ->(obj, inputs, ctx) {
    # TODO: define resolve function
    begin
      post = ctx[:current_user].posts.build
      post.subject = inputs.subject
      post.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end
    { post: post }
  }
end

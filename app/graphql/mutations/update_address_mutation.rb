Mutations::UpdateAddressMutation = GraphQL::Relay::Mutation.define do
  name 'UpdateAddress'

  input_field :postal_code, !types.Int
  input_field :address, !types.String

  return_field :address, !Types::AddressType
  return_field :user, Types::UserType

  resolve ->(_obj, inputs, ctx) {
    begin
      address = ctx[:current_user].address
      address.postal_code = inputs.postal_code
      address.address = inputs.address
      address.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { address: address, user: ctx[:current_user] }
  }
end

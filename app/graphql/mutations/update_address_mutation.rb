Mutations::UpdateAddressMutation = GraphQL::Relay::Mutation.define do
  name 'UpdateAddress'

  # input_field :postal_code, !types.Int
  # input_field :address, !types.String
  input_field :address_input, !Types::AddressInputType

  return_field :address, !Types::AddressType
  return_field :user, Types::UserType

  resolve ->(_obj, inputs, ctx) {
    begin
      address_input = inputs.address_input
      address = ctx[:current_user].address
      address.postal_code = address_input.postal_code
      address.address = address_input.address
      address.save
    rescue => e
      return GraphQL::ExecutionError.new(e.message)
    end

    { address: address, user: ctx[:current_user] }
  }
end

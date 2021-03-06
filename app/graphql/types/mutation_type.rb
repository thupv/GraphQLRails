Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createUser, function: Mutations::CreateUser.new
  field :signIn, function: Mutations::SignInUser.new
end

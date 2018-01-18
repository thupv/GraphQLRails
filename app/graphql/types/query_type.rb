Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :users, !types[Types::UserType] do
    description "List User"
    resolve ->(obj, args, ctx) {
      if ctx[:current_user].blank?
        raise GraphQL::ExecutionError.new("Authentication required")
      end
      User.all
    }
  end
end

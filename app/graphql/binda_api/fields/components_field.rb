BindaApi::Fields::ComponentsField = GraphQL::Field.define do
  name 'components'
  type BindaApi::Types::ComponentType.connection_type

  resolve(BindaApi::Resolvers::ComponentsResolver.new)
end

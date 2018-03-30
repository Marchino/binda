BindaApi::Fields::ComponentsField = GraphQL::Field.define do
  name 'components'

  argument :slug, types.String
  argument :structure_slug, types.String
  argument :publish_state, types.String

  type BindaApi::Types::ComponentType.connection_type

  resolve(BindaApi::Resolvers::ComponentsResolver.new)
end

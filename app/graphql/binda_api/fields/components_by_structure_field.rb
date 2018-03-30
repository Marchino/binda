BindaApi::Fields::ComponentsByStructureField = GraphQL::Field.define do
  name 'componentsByStructure'
  type BindaApi::Types::ComponentType.connection_type

  argument :slug, !types.String
  argument :structure_slug, !types.String
  argument :publish_state, !types.String

  resolve(BindaApi::Resolvers::ComponentsByStructureResolver.new)
end

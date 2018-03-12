BindaApi::Fields::ComponentsByStructureField = GraphQL::Field.define do
  name 'componentsByStructure'
  type BindaApi::Types::ComponentType.connection_type

  argument :slug, !types.String

  resolve(BindaApi::Resolvers::ComponentsByStructureResolver.new)
end

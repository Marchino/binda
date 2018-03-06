BindaApi::Fields::StructuresField = GraphQL::Field.define do
  name 'structures'
  type BindaApi::Types::StructureType.connection_type

  resolve(BindaApi::Resolvers::StructuresResolver.new)
end

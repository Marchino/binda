BindaApi::Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  connection :structures, BindaApi::Fields::StructuresField
  connection :components, BindaApi::Fields::ComponentsField
  connection :components_by_structure, BindaApi::Fields::ComponentsByStructureField
  
  field :component_by_slug, BindaApi::Fields::ComponentBySlugField
end

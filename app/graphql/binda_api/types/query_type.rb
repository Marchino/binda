BindaApi::Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  connection :structures, BindaApi::Fields::StructuresField
  connection :components, BindaApi::Fields::ComponentsField
  
  field :component_by_slug, BindaApi::Fields::ComponentBySlugField
end

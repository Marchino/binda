BindaApi::Fields::ComponentBySlugField = GraphQL::Field.define do
  name 'componentBySlug'
  type BindaApi::Types::ComponentType

  argument :slug, !types.String

  resolve(BindaApi::Resolvers::ComponentBySlugResolver.new)
end


BindaApi::Types::ComponentType = GraphQL::ObjectType.define do
  name "Binda_Component"

  field :id, !types.ID
  field :name, !types.String
  field :slug, !types.String

  field :get_string, BindaApi::Types::TextType do
    argument :slug, !types.String

    resolve ->(obj, args, ctx) {
      obj.get_string(args[:slug])
    }
  end
end

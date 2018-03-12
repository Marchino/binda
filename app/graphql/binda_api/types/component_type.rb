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

  field :get_text, BindaApi::Types::TextType do
    argument :slug, !types.String

    resolve ->(obj, args, ctx) {
      obj.get_text(args[:slug])
    }
  end

  field :get_radio, BindaApi::Types::RadioType do
    argument :slug, !types.String

    resolve ->(obj, args, ctx) {
      obj.get_radio_choice(args[:slug])
    }
  end

  field :get_image, BindaApi::Types::ImageType do
    argument :slug, !types.String

    resolve ->(obj, args, ctx) {
      obj.images.find{ |t| t.field_setting_id == Binda::FieldSetting.get_id( args[:slug] ) }
    }
  end
end

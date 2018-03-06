class BindaApi::Resolvers::ComponentsResolver
  def call(obj, args, ctx = {})
    Binda::Component.all
  end
end

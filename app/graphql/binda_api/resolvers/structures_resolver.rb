class BindaApi::Resolvers::StructuresResolver
  def call(obj, args, ctx = {})
    Binda::Structure.all
  end
end

BindaApi::Schema = GraphQL::Schema.define do
  mutation(BindaApi::Types::MutationType)
  query(BindaApi::Types::QueryType)

  rescue_from ActiveRecord::RecordNotFound do
    'Record not found'
  end
end

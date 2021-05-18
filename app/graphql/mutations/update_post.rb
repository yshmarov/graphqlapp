module Mutations
  class UpdatePost < Mutations::BaseMutation
    graphql_name "UpdatePost"

    argument :title, String, required: false
    argument :user_id, Integer, required: true
    argument :id, ID, required: true

    field :post, Types::PostType, null: false

    def resolve(id:, **attributes)
      post = Post.find(id)
      if post.update(attributes)
        {
          post: post,
          errors: []
        }
      else
        {
          post: nil,
          errors: post.errors.full_messages
        }
      end
    end
  end
end
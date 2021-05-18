module Mutations
  class CreatePost < Mutations::BaseMutation
    graphql_name "CreatePost"

    argument :title, String, required: false
    argument :user_id, Integer, required: true

    field :post, Types::PostType, null: false

    def resolve(user_id:, **attributes)
      user = User.find(user_id)
      post = user.posts.create(attributes)
      if post.save
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
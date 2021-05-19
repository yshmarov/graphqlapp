module Types
  class MutationType < Types::BaseObject
    field :destroy_post, mutation: Mutations::DestroyPost
    field :update_post, mutation: Mutations::UpdatePost
    field :create_post, mutation: Mutations::CreatePost

    field :update_user, mutation: Mutations::UpdateUser

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end

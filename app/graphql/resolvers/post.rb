# frozen_string_literal: true

class Resolvers::Post < Resolvers::Base
  type Types::PostType, null: false

  argument :id, ID, required: true

  def resolve(id:)
    post = Post.find(id)
    post
  end
end
# frozen_string_literal: true

class Resolvers::Post < Resolvers::Base
  description 'get post by id'

  type Types::PostType, null: false
  argument :id, ID, required: true

  def resolve(id:)
    ::Post.find(id)
  end
end
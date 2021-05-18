# frozen_string_literal: true

class Resolvers::Posts < Resolvers::Base
  type [Types::PostType], null: false

  def resolve
    Post.all
  end
end

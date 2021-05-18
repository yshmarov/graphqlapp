# frozen_string_literal: true

class Resolvers::User < Resolvers::Base
  description 'get user by id'

  type Types::UserType, null: false
  argument :id, ID, required: true

  def resolve(id:)
    user = User.find(id)
    user
  end
end
# frozen_string_literal: true

class Resolvers::Users < Resolvers::Base
  description 'list all users'

  type [Types::UserType], null: false

  def resolve
    User.all
  end
end

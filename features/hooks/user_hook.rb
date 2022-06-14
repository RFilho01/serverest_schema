# frozen_string_literal: true

require 'faker'

Before '@register_user.post' do
  @payload = {
    nome: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    administrador: Faker::Boolean.boolean.to_s
  }
end

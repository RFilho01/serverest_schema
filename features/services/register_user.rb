# frozen_string_literal: true

require_relative 'base_class'

# RegisterUser
class RegisterUser < Base
  base_uri 'https://serverest.dev/'
  headers 'Content-Type': 'application/json'

  def register_user(payload)
    self.class.post('/usuarios', body: payload.to_json)
  end
end

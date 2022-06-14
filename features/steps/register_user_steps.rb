# frozen_string_literal: true

Dado('que tenho uma massa configurada do endpoint Users.post para o cenário {string}') do |type|
  @user ||= OpenStruct.new
  @user.payload = type.eql?('positivo') ? @payload : { 'nome': 'payload inválido' }
end

Quando('chamar o endpoint Users.post') do
  @user.response = RegisterUser.new.register_user(@user.payload)
rescue StandardError => e
  @user.error = e
end

Entao('validar o retorno do endpoint Users.post para o cenário {string}') do |type|
  expect(@user.error).to be_nil
  if type.eql?('positivo')
    expect(@user.response.code).to eql 201
    expect(@user.response['message']).to eql('Cadastro realizado com sucesso')
    expect(@user.response['_id']).to be_an(String)
  else
    expect(@user.response.code).to eql 400
    expect(@user.response['email']).not_to be nil
  end
end

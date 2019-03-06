Dado /^Eu estou no site do Seu Barriga$/ do
    visit('/')
    expect(page).to have_current_path("http://seubarriga.wcaquino.me/login/", url: true)
  end
  
Quando /^Eu entro com o usuario "([^"]*)"$/ do |term|
  find_field(id: 'email').set(term)
  value = find_field(id: 'email').value
  expect('nylceduval@hotmail.com').to eq(value)
end

E /^Eu entro com a senha "([^"]*)"$/ do |term|
  find_field(id: 'senha').set(term)
  value = find_field(id: 'senha').value
  expect('260594').to eq(value)
end

Entao /^Eu devo ver a mensagem de boas vindas$/ do
  expect(page).to have_content "Bem vindo, Nylce Duval!"
end
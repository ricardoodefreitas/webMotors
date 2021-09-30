Dado('que o usuario esteja na pagina inicial da webmotors') do
  visit("")
  home_page.name_verify
end

Quando('realizar a pesquisa de veiculo com modelo {string}') do |vehicle|
  home_page.search_vehicle(vehicle)
end

Entao('o sistema deve retornar uma lista com os veiculos disponiveis') do
  expect(home_page.validate_search_return).to eql true
end

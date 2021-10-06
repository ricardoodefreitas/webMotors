Quando('realizar a consulta pelo parametro {string}') do |parameter|
  @api_result = api_comunicator.api_search(search_information.construct_url(parameter))
end

Entao('o sistema deve retornar as informacoes do tipo utilizado na consulta juntamente com o codigo da operacao realizada {string}') do |expect_code|
  expect(@api_result.code.to_s).to eql(expect_code)
end
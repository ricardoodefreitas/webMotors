# language: pt

@search_vehicle_webmotors
Funcionalidade: Realizar pesquisa de veiculos

  @search_vehicle
  Esquema do Cenario: Pesquisa de veiculo
    Dado que o usuario esteja na pagina inicial da webmotors
    Quando realizar a pesquisa de veiculo com modelo <modelo>
    Entao o sistema deve retornar uma lista com os veiculos disponiveis
    Exemplos:
      |modelo    |
      |'civic'   |
      |'gol'     |

#language: pt

@search
Funcionalidade: Realizar consultas nos End Points WebMotors

@search_information
Esquema do Cenario: Consultar informacoes de veiculos
  Quando realizar a consulta pelo parametro <parametro>
  Entao o sistema deve retornar as informacoes do tipo utilizado na consulta juntamente com o codigo da operacao realizada <codigo_esperado>
  Exemplos:
  |parametro |codigo_esperado|
  |'mark'    |'200'          |
  |'model'   |'200'          |
  |'version' |'200'          |
  |'vehicles'|'200'          |
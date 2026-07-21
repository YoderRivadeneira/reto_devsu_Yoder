Feature: Añadir una mascota a la tienda

  @testQA
  Scenario Outline: Crear una nueva mascota
    Given url urlBase + '/pet'
    And request { "id": <id>, "name": "<name>", "status": "<status>" }
    When method POST
    Then status 200
    * print 'Mascota creada:', response
    * karate.write(response, 'src/test/java/devsu/petstore/data/createdPetResponse_<id>.json')

    Examples:
      | id           | name  | status    |
      | 88888888888  | p333  | available |
      | 9999999      | p444  | available |

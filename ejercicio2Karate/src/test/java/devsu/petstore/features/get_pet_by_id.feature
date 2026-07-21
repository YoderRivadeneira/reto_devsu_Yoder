Feature: Consultar la mascota ingresada previamente (Búsqueda por ID)

  @testQA
  Scenario Outline: Buscar mascota por ID
    * def createdPet = read(buildDataPath + 'createdPetResponse_<id>.json')
    Given url urlBase + '/pet/' + createdPet.id
    When method GET
    Then status 200
    And match response.id == createdPet.id
    * print 'Response:', response
    * karate.write(response, 'src/test/java/devsu/petstore/data/getByIdResponse_<id>.json')

    Examples:
      | id           |
      | 88888888888  |
      | 9999999      |

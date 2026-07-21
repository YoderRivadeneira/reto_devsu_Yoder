Feature: Actualizar el nombre y estatus de la mascota a “sold”

  @testQA
  Scenario Outline: Actualizar una mascota existente
    * def buildDataPath = karate.get('buildDataPath') || 'build/src/test/java/devsu/petstore/data'
    * def idMascota = <id>
    * def updatedData = { "id": <id>, "name": "<name>", "status": "<status>" }

    Given url urlBase + '/pet'
    And request updatedData
    When method PUT
    Then status 200
    And match response.id == <id>
    And match response.name == "<name>"
    And match response.status == "<status>"

    * print 'Mascota actualizada:', response
    * karate.write(response,'src/test/java/devsu/petstore/data/updateResponse_<id>.json')

    Examples:
      | id          | name  | status |
      | 88888888888 | p666  | sold   |
      | 9999999     | p777  | sold   |

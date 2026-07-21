Feature: Limpiar los registros insertados durante el test

  @testQA
  Scenario Outline: Eliminar la mascota creada para los tests
    * def buildDataPath = karate.get('buildDataPath') || 'file:build/src/test/java/devsu/petstore/data/'
    * def cleanBuildDataPath = buildDataPath.replace('file:', '')
    * def createdPet = read(buildDataPath + 'createdPetResponse_<id>.json')
    * def idMascota = createdPet.id

    Given url urlBase + '/pet/' + idMascota
    When method DELETE
    Then status 200 || status 404

    * print 'Mascota con ID ' + idMascota + ' eliminada correctamente o no existe.'
    * karate.write(response, cleanBuildDataPath + 'cleantestResponse_<id>.json')

    Examples:
      | id           |
      | 88888888888  |
      | 9999999      |

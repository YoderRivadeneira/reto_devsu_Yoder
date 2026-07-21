Feature: Consultar la mascota modificada por estatus (Búsqueda por estatus)

  @testQA
  Scenario Outline: Buscar mascota por status
    * def buildDataPath = karate.get('buildDataPath') || 'file:build/src/test/java/devsu/petstore/data/'
    * def cleanBuildDataPath = buildDataPath.replace('file:', '')
    * def updatedPetResponse = read(buildDataPath + 'updateResponse_<id>.json')
    * def idMascota = updatedPetResponse.id

    Given url urlBase + '/pet/findByStatus?status=sold'
    When method GET
    Then status 200
    * print 'Response:', response
    * karate.write(response, cleanBuildDataPath + 'findPetByStatusResponse.json')
    * def responseSize = response.length
    * assert responseSize > 0
    * def foundItem = response.find(x => x.id == idMascota)
    * if (!foundItem) karate.fail('ID ' + idMascota + ' no encontrado. Respuesta completa: ' + response)
    * assert foundItem != null
    * print 'ID encontrado:', idMascota

    Examples:
      | id          |
      | 88888888888 |
      | 9999999     |

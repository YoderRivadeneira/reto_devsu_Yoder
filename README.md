# reto_devsu_Yoder
### Automatización E2E y Api
- Este repositorio contiene los dos proyectos solicitados en el reto técnico: Automatización E2E y Api, 
- Los proyectos tienen un plus que es CICD con GithubAction, en este repositorio tiene:

- Un  workflow con 2 jobs que corren por separado al realizar un commit, ejecutando asi ambas automatizaciones en la nube(runners de git) CI/CD DevOps.
- Cada proyecto: Automatización E2E y Api tienen su propio worflow permitiendo ejecutarlos asi por separado en la nube (runners de git) CI/CD DevOps.

#### Estructura del repo reto_devsu_Yoder:
reto_devsu_Yoder/
├── settings.gradle              # Root: incluye ambos subproyectos
├── build.gradle                 # Root: config Java 17 compartida
├── .github/workflows/ci.yml     # PLUS: CI/CD 2 jobs paralelos: E2E + API
├── ejercicio1E2E/
│   ├── build.gradle             # Serenity+ Screenplay, Cucumber, java
│   └── src/                     # Código E2E SauceDemo
└── ejercicio2Karate/
    ├── build.gradle             # Karate, java
    └── src/                     # Código API PetStore
Este repositorio tiene un  workflow con 2 jobs separados:
- Ejecuta mediante CitHub Actions:

   e2e-tests: Ejecuta  ./gradlew :ejercicio1E2E:test (Serenity/Cucumber)

  
- Ejecuta mediante CitHub Actions:

 api-tests: Ejecuta ./gradlew :ejercicio2Karate:test (Karate)


# PLus: DevOps CI/CD con Github Actions: Jobs paralelos e individuales para esta solución de automatización

 <img width="1354" height="509" alt="image" src="https://github.com/user-attachments/assets/f12652e2-8b93-44bc-9dd1-5ddc84632fd6" />

 <img width="1332" height="466" alt="image" src="https://github.com/user-attachments/assets/0d4edb7a-93d2-4f6b-9396-a4e51c5d25ef" />

<img width="1331" height="541" alt="image" src="https://github.com/user-attachments/assets/289892cb-5955-4ece-a231-b0649cf2b686" />

<img width="1312" height="591" alt="image" src="https://github.com/user-attachments/assets/2b4fb59f-9f2e-42d7-a123-bc2c08bb0383" />
<img width="1248" height="607" alt="image" src="https://github.com/user-attachments/assets/f8400b60-300a-4fcd-a853-3ae99e82c497" />



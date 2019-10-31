 #PGR301_infra

Denne repositorien tilsvarer infastruktur koden til eksamen i emnet PGR301_2019 DevOps i skyen.

Tilsvarende Appilkasjon-repo: [pgr301_applikasjon
](https://github.com/DevopsKristiania/pgr301_applikasjon)

## Hvordan kjøre infastrukturkoden
Infakstrukturen opprettes med Travis.ci når du pusher koden.
Nedenfor er en liste med det som opprettes når du pusher "master branch" til dette repositoriet.



## Funksjonalitet

- Oppretter tre applikasjoner i Heroku i en Heroku Pipeline.

  Development, Stage og Production. 
  
-  CI/CD pipeline for  infrastruktur.
  
  Master branch i applikasjons repositoriet deployes i dette miljøet.
  
  Man kan fritt deploye fra CI-miljø videre til Stage og produksjon  manuelt ved at man promoterer applikasjonen i Heroku UI (Eller CLI).

 -   overvåkning ved hjelp av SAAS tjenesten OpsGenie                        
 
      team.tf
 -   overvåkning ved hjelp av SAAS tjenesten StatusCake
 
     monitor.tf
 
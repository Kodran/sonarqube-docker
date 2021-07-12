## This command remove all volumes, if you use others volumes, try rm only the Sonarqube volumes.
#sonarqube_conf
#sonarqube_data
#sonarqube_logs
#sonarqube_extensions
#sonarqube_bundled-plugins
#postgresql
#postgresql_data
fresh-install-sonarqube:
	docker-compose stop && docker-compose down && docker stop sonardb sonarqube && docker system prune --volumes && docker-compose -f docker-compose-sonarqube.yml up -d sonarqube sonarqubedb

## This command remove all volumes, if you use other volumes, try to remove only the Sonarqube volumes.
#sonarqube_conf
#sonarqube_data
#sonarqube_logs
#sonarqube_extensions
#sonarqube_bundled-plugins
#postgresql
#postgresql_data
clean-docker:
	docker-compose stop && docker-compose down && docker system prune --volumes && docker stop sonardb sonarqube

clean-sonarqube-volumes:
	docker-compose stop && docker-compose down && docker stop sonardb sonarqube && docker volume rm {your_project_key}_sonarqube_conf {your_project_key}_sonarqube_data {your_project_key}_sonarqube_logs {your_project_key}_sonarqube_extensions {your_project_key}_sonarqube_bundled-plugins {your_project_key}_postgresql {your_project_key}_postgresql_data

start-scanner:
	docker-compose -f docker-compose-sonarqube.yml up sonarscanner

start-sonarqube:
	docker-compose -f docker-compose-sonarqube.yml up -d sonarqube sonarqubedb

stop-sonarqube:
	docker-compose stop
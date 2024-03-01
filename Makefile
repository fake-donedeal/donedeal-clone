.PHONY: compose compose-down destroy-volumes destroy-api-volume destroy-db-volume
compose:
	docker compose up
compose-down:
	docker compose down
destroy-volumes: destroy-api-volume destroy-db-volume
destroy-api-volume:
	docker volume rm motor-marketplace_apiserver-data
destroy-db-volume:
	docker volume rm motor-marketplace_postgres-data
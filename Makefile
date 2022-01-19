.PHONY: build install sh run down

install:
	docker-compose run --rm app go mod vendor

sh:
	docker-compose  run --rm app ash

run:
	docker-compose up

down:
	docker-compose  down

migrate:
	docker-compose  run --rm app bundle exec ridgepole -c config/database.yml -E development -s primary --apply -f db/schemas/Schemafile

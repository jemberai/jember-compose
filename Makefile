up:
	docker compose -f docker-compose.yml up -d

down:
	docker compose -f docker-compose.yml down

resetdb:
	rm -rf ${PWD}/db/postgres/data/*
	docker-compose -f docker-compose.infra.yml down --volumes
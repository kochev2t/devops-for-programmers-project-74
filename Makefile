compose-setup:
	docker-compose run --rm app make setup

compose-dev:
	docker-compose run app make start

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker-compose -f docker-compose.yml run --rm app npm install
	docker-compose -f docker-compose.yml up --build --abort-on-container-exit

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
	docker-compose -f docker-compose.test.yml run --rm app npm install
	docker-compose -f docker-compose.test.yml up --build --abort-on-container-exit

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

ci:
    docker-compose -f docker-compose.test.yml up --abort-on-container-exit --exit-code-from test
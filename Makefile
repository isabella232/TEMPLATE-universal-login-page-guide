lint: 
	docker run --rm -t -v `pwd`/integration/:/data/integration/ auth0josh/auth0-integration-testing npm run integration:lint

zip: 
	zip -r integration-universal-login-page.zip integration

deploy_init:
	docker run --rm -it -v `pwd`/integration/:/data/integration/ -v `pwd`/deploy:/data/deploy auth0josh/auth0-integration-testing bash deploy-scripts/init.sh

deploy_get_token:
	docker run --rm -t -v `pwd`/integration/:/data/integration/ -v `pwd`/deploy:/data/deploy auth0josh/auth0-integration-testing bash deploy-scripts/get-token.sh

deploy_get:
	docker run --rm -t -v `pwd`/integration/:/data/integration/ -v `pwd`/deploy:/data/deploy auth0josh/auth0-integration-testing bash deploy-scripts/ulp-get.sh

deploy_update:
	docker run --rm -t -v `pwd`/integration/:/data/integration/ -v `pwd`/deploy:/data/deploy auth0josh/auth0-integration-testing bash deploy-scripts/ulp-update.sh

deploy_delete:
	docker run --rm -t -v `pwd`/integration/:/data/integration/ -v `pwd`/deploy:/data/deploy auth0josh/auth0-integration-testing bash deploy-scripts/ulp-delete.sh
UID=`id -u`

default: clean node docs

node:
	docker build -t velopayments/apidocs-builder .

shell: node
	docker run -it -v ${PWD}:/usr/src/app --entrypoint /bin/sh --user ${UID} velopayments/apidocs-builder

clean:
	rm -f index.html

yarn:
	docker run -v ${PWD}:/usr/src/app velopayments/apidocs-builder yarn

docs: yarn
	docker run --user ${UID} -v ${PWD}:/usr/src/app velopayments/apidocs-builder yarn run redoc-cli bundle ./spec/openapi.yaml -t ./spec/custom-template.hbs -o index.html

branch: clean node
	mkdir -p version/${BRANCH}
	docker run --user ${UID} -e BRANCH=${BRANCH} -v ${PWD}:/usr/src/app velopayments/apidocs-builder yarn run redoc-cli bundle ./spec/openapi.yaml -t ./spec/custom-template.hbs -o ./version/${BRANCH}/index.html
	if [ "${BRANCH}" = "master" ]; then ln -sf ./version/${BRANCH}/index.html index.html; fi;

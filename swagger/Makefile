UID=`id -u`

default: clean node docs

node:
	docker build -t velopayments/apidocs-builder ..

shell: node
	docker run -it -v ${PWD}:/usr/src/app --entrypoint /bin/sh --user ${UID} velopayments/apidocs-builder

clean:
	rm -f dist/bundle.js

yarn:
	docker run --user ${UID} -v ${PWD}:/usr/src/app velopayments/apidocs-builder yarn

swagger: clean yarn
	docker run --user ${UID} -v ${PWD}:/usr/src/app velopayments/apidocs-builder yarn run webpack

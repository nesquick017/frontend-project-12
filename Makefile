lint-frontend:
	make -C frontend lint

install:
	npm ci
	npm --prefix ./frontend install

start-frontend:
	npm --prefix ./frontend run build
	make -C frontend start

start-backend:
	npx start-server -s ./frontend/build

start:
	make start-backend & make start-frontend

build:
	rm frontend/build -rf
	npm run build
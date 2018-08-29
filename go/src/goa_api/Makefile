# app用Makefile

gen:
	goa gen goa_api/design -o svc

example:
	goa example goa_api/design -o svc

start:
	go run svc/cmd/goa_api/main.go

up:
	migrate -source file://migrate/ -database "mysql://admin:password@tcp(db:3306)/goadock" up

down:
	migrate -source file://migrate/ -database "mysql://admin:password@tcp(db:3306)/goadock" down

migratefile:
	migrate create -ext=sql -dir=migrate/ ${name}

sync_schema:
	gen --connstr "admin:password@tcp(db:3306)/goadock" --database goadock  --json --gorm
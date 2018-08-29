dockerrun = docker run --rm -it -v $(pwd):/backup --name rethink-dump muchrm/rethinkdump
host = localhost:28015
file = rdb_dump.tar.gz
build:
	docker build -t muchrm/rethinkdump .
release:
	docker push muchrm/rethinkdump
backup:
	$(dockerrun) rethinkdb-dump -c $(host) -f $(file)
restore:
	$(dockerrun) muchrm/rethinkdump rethinkdb-restore $(file) -c $(host)
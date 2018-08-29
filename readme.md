backup
```
    docker run --rm -it -v $(pwd):/backup --name rethink-dump muchrm/rethinkdump rethinkdb-dump -c localhost:28015 -f rdb_dump.tar.gz
```

restore
```
    docker run --rm -it -v $(pwd):/backup --name rethink-dump muchrm/rethinkdump muchrm/rethinkdump rethinkdb-restore rdb_dump.tar.gz -c localhost:28015
```
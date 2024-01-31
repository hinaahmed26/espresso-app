#! /bin/bash

helm delete $(helm list | grep -e  product   -e reviews    -e web   -e postgresql-ha -e redis | awk '{print $1}' 
)

kubectl  delete pvc data-postgresql-ha-postgresql-0     \
            data-postgresql-ha-postgresql-1      \
            data-postgresql-ha-postgresql-2     \
            data-redis-redis-ha-server-0  \
            data-redis-redis-ha-server-1  \
            data-redis-redis-ha-server-2
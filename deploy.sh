#! /bin/bash

helm install postgresql-ha postgresql-ha  
helm install redis redis-ha
helm install reviews espresso-reviews 
helm install product espresso-product 
helm install web espresso-web
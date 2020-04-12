# Postgres_kubernetes
A kubernetes deployable Postgres container

## deploy with kubernetes
### change permisions on deploy script
``` 
chmod u+x deploy.sh 
```
### Run the script
```
./deploy.sh
```
Then watch for your pod, you may need to install watch:
```
watch kubectl get all 
```
### Enter the database pod
```
kubectl exec -it <podname> bash
```
check the database to see if the info from the configmap is present
```
psql pstgres admin
\l
\c demo
\dt
SELECT * FROM card;
```

## Stop everything
```
kubectl delete -f .
```
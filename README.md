# K8s for Azure
Version for Azure
## resources
- MySQL database with clusterIP service, Initialization from /backup/*.sql(custom image)
- PhpMyAdmin with Nodeport service(custom image), when starts, upload some data to mysql server(downloaded from Azure storage acc)
- Persistent volume & persistent volume claim mounted to /backup in MySQL container
- Secret with base64 encoded credentials
- Configmap with link to database

## CI\CD
On push to github:  
- build directory /client/
- push to Azure container registry
- apply image from ACR to K8S cluster

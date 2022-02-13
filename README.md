# K8s for minikube
Version for minikube(access through nodeport: local-node-ip:30022)		
## resources
- MySQL database with clusterIP service, Initialization from /backup/*.sql(custom image)
- PhpMyAdmin with Nodeport service(custom image)
- Persistent volume & persistent volume claim mounted to /backup in MySQL container
- Secret with base64 encoded credentials
- Configmap with link to database


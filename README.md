# myNodeRestAPI

This Prject contains a simple Nodejs app

With a Dockerfile, I create a Docker Image and Using minikube Deployed it with Deploy.yaml and service.yaml

Commands to do the successful Deployment are as follows

1. Download or Clone this repository.
2. cd node-api  // switch to node-api folder
3. docker build -t <Image-Name> . [or <PathforDockerfile>]  // Build the Docker Image using Dockerfile
4. docker push <dockerusername>/<Image-Name>:latest //Push the Image to Docker Hub (In my case it is docker push surekhadock2020/myrestapi:latest) 
After sucessfully building and Pushing the Image,
4. minikube start  // Start minikube  
5. kubectl apply -f deploy.yaml // this creates a Deployment
6. kubectl apply -f service.yaml // this creates a Service
7. kubectl get svc,deployments -o wide  // this will give the status of deployment and service
8. minikube dashboard // Opens up a Kubernetes Dashboard with all the workloads
9. Identify the ClusterIP of the Service in my case it was "10.106.119.227" on port 32002 (NodePort)
9. curl -v 10.106.119.227:32002 // Switch to the pods and exec into any of the pods running and do curl command
10.You can see console message "Welcome ..."

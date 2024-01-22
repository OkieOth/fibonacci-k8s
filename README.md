# TL;DR;
Example that implements implements a simple REST server in some
commonn coding languages and puts them into a Kubernetes cluster.

[Implemented REST-API](api/openapi.yaml)

# First Results
(Not that reliable :D)

## Memory consumption with local execution
* Rust: 370k
* Golang: 800k
* Quarkus native: 6 MB
* Node.js: 9 MB
* Python: 19,7 MB
* Dotnet: 75 MB
* Quarkus: 105 MB

# K6
For the performance test k6 is used. To play around with the 
repo it make sense to have it installed

https://k6.io/open-source/
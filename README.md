# TL;DR;
Example that implements implements a simple REST server in some
commonn coding languages and puts them into a Kubernetes cluster.

[Implemented REST-API](api/openapi.yaml)

# Results
All tests were executed with k6, 10 parallel consumers over a period
of 30 seconds.

For the tests a request is used that queries the first 100 Fibonacci numbers.

(Not that reliable :D)



## Local Execution

| Language                    | Iterations | Memory |
| --------------------------- | ---------- | ------ |
| Python                      |     39736  |  19 MB |
| Dotnet                      |   1026353  |  80 MB |
| Node                        |    146636  |  12 MB |
| Java Quarkus                |   1000729  | 500 MB |
| Java Quarkus (native)       |    720283  |  27 MB |
| Java Spring Boot 3          |    733179  | 500 MB |
| Java Spring Boot 3 (native) |    579121  | 115 MB |
| Golang                      |   1014867  |   5 MB |
| Rust                        |   1404050  | 790 kB |

## Execution as Docker Image

| Language       | Image      | Size   | Mem      | CPU   | Iterations |
| -------------- | ---------- | ------ | -------- | ----- | ---------- |
| Python         | Alpine     |  89 MB |  21 MB   | 110 % |  24919     |
|                | Debian     | 167 MB |  27 MB   | 120 % |  30088     |
| Dotnet         | asp.net8.0 | 225 MB |  94 MB   | 210 % | 694299     |
| Node           | Alpine     | 147 MB |  50 MB   | 110 % | 173073     |
|                | Debian     | 211 MB |  68 MB   | 110 % | 178769     |
| Golang         | Alpine     |  15 MB |   8 MB   | 240 % | 644713     |
|                | Debian     |  82 MB |   8.5 MB | 240 % | 622670     |
| Quarkus native | minimal    |  78 MB |  25 MB   | 310 % | 561190     |
| Spring Boot 3  | default    | 109 MB | 115 MB   | 400 % | 398724     |
| Rust           | Alpine     |  20 MB |   1.5 MB | 270 % | 557046     |
|                | Debian     |  83 MB |   2.2 MB | 142 % | 845817     |


# K6
For the performance test k6 is used. To play around with the 
repo it make sense to have it installed

https://k6.io/open-source/
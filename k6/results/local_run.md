# TL;DR;

k6 requests for 30"

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

# Python
## with normal logging
Memory: 19.7 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 7.0 MB 233 kB/s
     data_sent......................: 3.7 MB 123 kB/s
     http_req_blocked...............: avg=114.59µs min=79.28µs med=111.09µs max=3.56ms   p(90)=131.84µs p(95)=144.06µs
     http_req_connecting............: avg=79.59µs  min=54.29µs med=76.68µs  max=3.28ms   p(90)=92.26µs  p(95)=103.68µs
     http_req_duration..............: avg=7.38ms   min=1.11ms  med=7.23ms   max=24.12ms  p(90)=7.96ms   p(95)=8.28ms
       { expected_response:true }...: avg=7.38ms   min=1.11ms  med=7.23ms   max=24.12ms  p(90)=7.96ms   p(95)=8.28ms
     http_req_failed................: 0.00%  ✓ 0           ✗ 39736
     http_req_receiving.............: avg=191.3µs  min=24.97µs med=95.69µs  max=14.52ms  p(90)=604.89µs p(95)=709.08µs
     http_req_sending...............: avg=19.69µs  min=10.34µs med=18.83µs  max=399.17µs p(90)=23.82µs  p(95)=26.24µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=7.17ms   min=1ms     med=7.07ms   max=23.54ms  p(90)=7.62ms   p(95)=7.89ms
     http_reqs......................: 39736  1324.216614/s
     iteration_duration.............: avg=7.54ms   min=1.75ms  med=7.38ms   max=24.36ms  p(90)=8.12ms   p(95)=8.43ms
     iterations.....................: 39736  1324.216614/s
     vus............................: 10     min=10        max=10
     vus_max........................: 10     min=10        max=10


running (0m30.0s), 00/10 VUs, 39736 complete and 0 interrupted iterations
```

## Logging turned off
Memory consumption: 19.2 MB

Changed loglevel increased performance about 25%

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 49 MB  1.6 MB/s
     data_sent......................: 3.5 MB 115 kB/s
     http_req_blocked...............: avg=114.58µs min=78.81µs med=110.32µs max=12.78ms  p(90)=132.2µs  p(95)=145.85µs
     http_req_connecting............: avg=79.54µs  min=55.17µs med=76µs     max=12.73ms  p(90)=92.26µs  p(95)=105.28µs
     http_req_duration..............: avg=7.89ms   min=1.43ms  med=7.74ms   max=24.41ms  p(90)=8.56ms   p(95)=8.93ms
       { expected_response:true }...: avg=7.89ms   min=1.43ms  med=7.74ms   max=24.41ms  p(90)=8.56ms   p(95)=8.93ms
     http_req_failed................: 0.00%  ✓ 0          ✗ 37241
     http_req_receiving.............: avg=199.32µs min=25.54µs med=94.45µs  max=14ms     p(90)=646.44µs p(95)=764.88µs
     http_req_sending...............: avg=19.77µs  min=10.2µs  med=18.83µs  max=347.47µs p(90)=23.88µs  p(95)=26.36µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=7.67ms   min=1.29ms  med=7.57ms   max=24.2ms   p(90)=8.18ms   p(95)=8.53ms
     http_reqs......................: 37241  1241.10324/s
     iteration_duration.............: avg=8.04ms   min=1.87ms  med=7.89ms   max=24.54ms  p(90)=8.72ms   p(95)=9.09ms
     iterations.....................: 37241  1241.10324/s
     vus............................: 10     min=10       max=10
     vus_max........................: 10     min=10       max=10
running (0m30.0s), 00/10 VUs, 37241 complete and 0 interrupted iterations
```


# csharp

## Native Publish
The native build was successful, but created runtime errors while handling the requests

## Normal version
Memory consumption after execution: 80.6 MB

```
 execution: local
     script: script.js
     output: -

  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.3 GB  45 MB/s
     data_sent......................: 96 MB   3.2 MB/s
     http_req_blocked...............: avg=2.32µs   min=763ns   med=1.55µs   max=15.72ms  p(90)=2.06µs   p(95)=2.44µs
     http_req_connecting............: avg=16ns     min=0s      med=0s       max=2.71ms   p(90)=0s       p(95)=0s
     http_req_duration..............: avg=231.88µs min=69.59µs med=160.95µs max=150.18ms p(90)=332.63µs p(95)=428.04µs
       { expected_response:true }...: avg=231.88µs min=69.59µs med=160.95µs max=150.18ms p(90)=332.63µs p(95)=428.04µs
     http_req_failed................: 0.00%   ✓ 0           ✗ 1026353
     http_req_receiving.............: avg=37.35µs  min=8.96µs  med=18.63µs  max=41.48ms  p(90)=29.07µs  p(95)=34.27µs
     http_req_sending...............: avg=10.63µs  min=3.22µs  med=6.64µs   max=31.84ms  p(90)=9.11µs   p(95)=13.81µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=183.89µs min=44.95µs med=131.87µs max=149.96ms p(90)=294.49µs p(95)=377.55µs
     http_reqs......................: 1026353 34211.58781/s
     iteration_duration.............: avg=281.49µs min=98.56µs med=199.19µs max=153.05ms p(90)=378.37µs p(95)=482.38µs
     iterations.....................: 1026353 34211.58781/s
     vus............................: 10      min=10        max=10
     vus_max........................: 10      min=10        max=10
```
# Rust

## With console print

Memory consumption after execution: 787kB

```
    execution: local
     script: script.js
     output: -

  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.2 GB 40 MB/s
     data_sent......................: 87 MB  2.9 MB/s
     http_req_blocked...............: avg=2.21µs   min=754ns   med=1.6µs    max=4.5ms    p(90)=2.09µs   p(95)=2.44µs
     http_req_connecting............: avg=2ns      min=0s      med=0s       max=352.18µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=260.94µs min=69.61µs med=217.89µs max=17.27ms  p(90)=428.21µs p(95)=521.97µs
       { expected_response:true }...: avg=260.94µs min=69.61µs med=217.89µs max=17.27ms  p(90)=428.21µs p(95)=521.97µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 939780
     http_req_receiving.............: avg=28.81µs  min=8.38µs  med=18.09µs  max=14.28ms  p(90)=28.86µs  p(95)=46.97µs
     http_req_sending...............: avg=9.32µs   min=3.55µs  med=6.85µs   max=8.72ms   p(90)=8.91µs   p(95)=13.01µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=222.81µs min=47.87µs med=184.95µs max=17.23ms  p(90)=383.28µs p(95)=461.67µs
     http_reqs......................: 939780 31325.703703/s
     iteration_duration.............: avg=308.65µs min=95.23µs med=260.14µs max=17.31ms  p(90)=485.24µs p(95)=595.83µs
     iterations.....................: 939780 31325.703703/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10
```

## Without console print

Memory consumption: 787 kB

removal of console print speeds up the service by 50% ... 8-o

```
  execution: local
     script: script.js
     output: -

  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.8 GB  59 MB/s
     data_sent......................: 131 MB  4.4 MB/s
     http_req_blocked...............: avg=1.73µs   min=731ns   med=1.47µs   max=8.2ms    p(90)=1.86µs   p(95)=2.1µs
     http_req_connecting............: avg=0ns      min=0s      med=0s       max=259.95µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=167.88µs min=49.56µs med=143.34µs max=16.25ms  p(90)=250.85µs p(95)=294.97µs
       { expected_response:true }...: avg=167.88µs min=49.56µs med=143.34µs max=16.25ms  p(90)=250.85µs p(95)=294.97µs
     http_req_failed................: 0.00%   ✓ 0            ✗ 1404050
     http_req_receiving.............: avg=20.87µs  min=7.53µs  med=16.83µs  max=14.51ms  p(90)=21.31µs  p(95)=25.56µs
     http_req_sending...............: avg=7.38µs   min=3.41µs  med=6.35µs   max=9.86ms   p(90)=7.56µs   p(95)=8.57µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=139.62µs min=35.47µs med=117.7µs  max=16.23ms  p(90)=219.67µs p(95)=259.71µs
     http_reqs......................: 1404050 46801.255081/s
     iteration_duration.............: avg=205.49µs min=76.05µs med=178.34µs max=19.42ms  p(90)=292.22µs p(95)=341.73µs
     iterations.....................: 1404050 46801.255081/s
     vus............................: 10      min=10         max=10
     vus_max........................: 10      min=10         max=10
```

# Golang
Memory Consumption: 5 MB


```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.3 GB  43 MB/s
     data_sent......................: 94 MB   3.1 MB/s
     http_req_blocked...............: avg=1.7µs    min=767ns    med=1.49µs   max=1.8ms    p(90)=1.87µs   p(95)=2.07µs
     http_req_connecting............: avg=1ns      min=0s       med=0s       max=400.15µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=250.68µs min=74.81µs  med=224.7µs  max=14.93ms  p(90)=362.35µs p(95)=417.41µs
       { expected_response:true }...: avg=250.68µs min=74.81µs  med=224.7µs  max=14.93ms  p(90)=362.35µs p(95)=417.41µs
     http_req_failed................: 0.00%   ✓ 0            ✗ 1014867
     http_req_receiving.............: avg=20.32µs  min=7.98µs   med=17.82µs  max=9.92ms   p(90)=22.68µs  p(95)=26.11µs
     http_req_sending...............: avg=7.34µs   min=3.56µs   med=6.55µs   max=1.51ms   p(90)=7.69µs   p(95)=8.37µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=223.01µs min=51.94µs  med=198µs    max=14.9ms   p(90)=334.34µs p(95)=385.51µs
     http_reqs......................: 1014867 33828.473475/s
     iteration_duration.............: avg=287.47µs min=106.42µs med=260.18µs max=15.11ms  p(90)=400.4µs  p(95)=460.36µs
     iterations.....................: 1014867 33828.473475/s
     vus............................: 10      min=10         max=10
     vus_max........................: 10      min=10         max=10


running (0m30.0s), 00/10 VUs, 1014867 complete and 0 interrupted iterations
```

# Node

Memory consumption: 12,8 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 207 MB 6.9 MB/s
     data_sent......................: 14 MB  455 kB/s
     http_req_blocked...............: avg=1.46µs  min=706ns    med=1.25µs  max=285.55µs p(90)=1.96µs  p(95)=2.13µs
     http_req_connecting............: avg=6ns     min=0s       med=0s      max=171.32µs p(90)=0s      p(95)=0s
     http_req_duration..............: avg=2ms     min=311.17µs med=1.79ms  max=34.76ms  p(90)=3.12ms  p(95)=3.67ms
       { expected_response:true }...: avg=2ms     min=311.17µs med=1.79ms  max=34.76ms  p(90)=3.12ms  p(95)=3.67ms
     http_req_failed................: 0.00%  ✓ 0           ✗ 146636
     http_req_receiving.............: avg=25.12µs min=9.67µs   med=22.15µs max=12.5ms   p(90)=38.34µs p(95)=42.01µs
     http_req_sending...............: avg=6.02µs  min=3.19µs   med=5.36µs  max=3.36ms   p(90)=7.95µs  p(95)=8.62µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=1.96ms  min=251.96µs med=1.76ms  max=34.69ms  p(90)=3.08ms  p(95)=3.64ms
     http_reqs......................: 146636 4887.508981/s
     iteration_duration.............: avg=2.03ms  min=361.88µs med=1.83ms  max=34.98ms  p(90)=3.16ms  p(95)=3.71ms
     iterations.....................: 146636 4887.508981/s
     vus............................: 10     min=10        max=10
     vus_max........................: 10     min=10        max=10


running (0m30.0s), 00/10 VUs, 146636 complete and 0 interrupted iterations
```

# Quarkus

## JVM
Memory consumption: 500 MB? ... (it opened 3 prozesses)

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.3 GB  45 MB/s
     data_sent......................: 93 MB   3.1 MB/s
     http_req_blocked...............: avg=2.08µs   min=763ns    med=1.62µs   max=12.2ms   p(90)=2.07µs   p(95)=2.39µs
     http_req_connecting............: avg=1ns      min=0s       med=0s       max=270.39µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=245.4µs  min=77.11µs  med=194.22µs max=101.63ms p(90)=374.63µs p(95)=478.53µs
       { expected_response:true }...: avg=245.4µs  min=77.11µs  med=194.22µs max=101.63ms p(90)=374.63µs p(95)=478.53µs
     http_req_failed................: 0.00%   ✓ 0            ✗ 1000729
     http_req_receiving.............: avg=26.6µs   min=8.4µs    med=18.31µs  max=27.25ms  p(90)=43.49µs  p(95)=59.45µs
     http_req_sending...............: avg=8.94µs   min=3.5µs    med=6.98µs   max=17.41ms  p(90)=8.59µs   p(95)=12.62µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=209.85µs min=57.24µs  med=159.35µs max=101.51ms p(90)=331.79µs p(95)=428.81µs
     http_reqs......................: 1000729 33357.199794/s
     iteration_duration.............: avg=290.01µs min=106.64µs med=237.63µs max=102.07ms p(90)=428.84µs p(95)=537.94µs
     iterations.....................: 1000729 33357.199794/s
     vus............................: 10      min=10         max=10
     vus_max........................: 10      min=10         max=10
```

## native

Memory consumption: 27.7 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 961 MB 32 MB/s
     data_sent......................: 67 MB  2.2 MB/s
     http_req_blocked...............: avg=1.93µs   min=888ns    med=1.66µs   max=949.35µs p(90)=2.01µs   p(95)=2.22µs
     http_req_connecting............: avg=2ns      min=0s       med=0s       max=266.26µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=367.13µs min=130.61µs med=311.26µs max=27.73ms  p(90)=497.16µs p(95)=608.5µs
       { expected_response:true }...: avg=367.13µs min=130.61µs med=311.26µs max=27.73ms  p(90)=497.16µs p(95)=608.5µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 720283
     http_req_receiving.............: avg=22.09µs  min=9.1µs    med=18.95µs  max=15.94ms  p(90)=23.74µs  p(95)=27.97µs
     http_req_sending...............: avg=8.2µs    min=3.68µs   med=7.06µs   max=2.73ms   p(90)=8.25µs   p(95)=8.99µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=336.83µs min=108.99µs med=282.27µs max=27.71ms  p(90)=463.57µs p(95)=571.4µs
     http_reqs......................: 720283 24009.061017/s
     iteration_duration.............: avg=407.74µs min=160.72µs med=350.5µs  max=27.77ms  p(90)=542.68µs p(95)=657.02µs
     iterations.....................: 720283 24009.061017/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10
```

# Spring Boot 3

## JVM

Mem: 515 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 895 MB 30 MB/s
     data_sent......................: 68 MB  2.3 MB/s
     http_req_blocked...............: avg=1.93µs   min=812ns    med=1.69µs   max=1.93ms   p(90)=2.08µs   p(95)=2.29µs
     http_req_connecting............: avg=1ns      min=0s       med=0s       max=300.32µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=359.61µs min=138.24µs med=320.73µs max=16.91ms  p(90)=500.53µs p(95)=586.85µs
       { expected_response:true }...: avg=359.61µs min=138.24µs med=320.73µs max=16.91ms  p(90)=500.53µs p(95)=586.85µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 733179
     http_req_receiving.............: avg=21.9µs   min=8.6µs    med=19.08µs  max=8.05ms   p(90)=24.1µs   p(95)=27.67µs
     http_req_sending...............: avg=8.24µs   min=3.61µs   med=7.14µs   max=10.47ms  p(90)=8.47µs   p(95)=9.17µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=329.46µs min=116.07µs med=291.92µs max=16.88ms  p(90)=467.77µs p(95)=550.54µs
     http_reqs......................: 733179 24438.921857/s
     iteration_duration.............: avg=400.27µs min=164.64µs med=360.13µs max=16.96ms  p(90)=545.02µs p(95)=634.19µs
     iterations.....................: 733179 24438.921857/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10


running (0m30.0s), 00/10 VUs, 733179 complete and 0 interrupted iterations
```

## native

Mem: 115 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 707 MB 24 MB/s
     data_sent......................: 54 MB  1.8 MB/s
     http_req_blocked...............: avg=1.89µs   min=853ns    med=1.71µs   max=3.28ms   p(90)=2.05µs   p(95)=2.26µs
     http_req_connecting............: avg=4ns      min=0s       med=0s       max=475.11µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=469.33µs min=184.38µs med=409.14µs max=17.18ms  p(90)=609.58µs p(95)=714.9µs
       { expected_response:true }...: avg=469.33µs min=184.38µs med=409.14µs max=17.18ms  p(90)=609.58µs p(95)=714.9µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 579121
     http_req_receiving.............: avg=21.81µs  min=9.44µs   med=19.63µs  max=5.24ms   p(90)=24.86µs  p(95)=28.01µs
     http_req_sending...............: avg=8.03µs   min=3.64µs   med=7.27µs   max=3.03ms   p(90)=8.5µs    p(95)=9.18µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=439.48µs min=160.67µs med=380.35µs max=17.15ms  p(90)=577.49µs p(95)=679.97µs
     http_reqs......................: 579121 19303.666374/s
     iteration_duration.............: avg=509.33µs min=218.42µs med=448.13µs max=17.26ms  p(90)=652.12µs p(95)=759.53µs
     iterations.....................: 579121 19303.666374/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10


running (0m30.0s), 00/10 VUs, 579121 complete and 0 interrupted iterations
```
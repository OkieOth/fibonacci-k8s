# TL;DR;

k6 requests for 30"

# Rust

## Alpine Image
CPU: max 270%
Mem: 1.5 MB

```
    script: script.js
     output: -

  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 703 MB 23 MB/s
     data_sent......................: 52 MB  1.7 MB/s
     http_req_blocked...............: avg=1.81µs   min=874ns    med=1.68µs   max=533.76µs p(90)=2.13µs
     http_req_connecting............: avg=2ns      min=0s       med=0s       max=268.15µs p(90)=0s
     http_req_duration..............: avg=490.89µs min=127.13µs med=445.83µs max=37.93ms  p(90)=708.48
       { expected_response:true }...: avg=490.89µs min=127.13µs med=445.83µs max=37.93ms  p(90)=708.48µs p(95)=802.42µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 557046
     http_req_receiving.............: avg=21.95µs  min=8.63µs   med=20.06µs  max=5.06ms   p(90)=26.46µs  p(95)=29.42µs
     http_req_sending...............: avg=7.73µs   min=3.88µs   med=7.16µs   max=2.98ms   p(90)=8.72µs   p(95)=9.53µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=461.21µs min=104.76µs med=416.89µs max=37.8ms   p(90)=678.08µs p(95)=770.46µs
     http_reqs......................: 557046 18567.794288/s
     iteration_duration.............: avg=530.05µs min=158.89µs med=484.56µs max=38.36ms  p(90)=747.71µs p(95)=842.95µs
     iterations.....................: 557046 18567.794288/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10

running (0m30.0s), 00/10 VUs, 557046 complete and 0 interrupted iterations
default ✓ [======================================] 10 VUs  30s
```

## Debian Image
CPU: max 142%
Mem: 2.2 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.1 GB 36 MB/s
     data_sent......................: 79 MB  2.6 MB/s
     http_req_blocked...............: avg=1.7µs    min=775ns    med=1.54µs   max=4.48ms   p(90)=1.94µs   p(95)=2.11µs
     http_req_connecting............: avg=1ns      min=0s       med=0s       max=287.61µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=309.9µs  min=97.86µs  med=288.8µs  max=23.32ms  p(90)=408.01µs p(95)=452.13µs
       { expected_response:true }...: avg=309.9µs  min=97.86µs  med=288.8µs  max=23.32ms  p(90)=408.01µs p(95)=452.13µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 845817
     http_req_receiving.............: avg=20.31µs  min=9.33µs   med=18.63µs  max=9.83ms   p(90)=23.11µs  p(95)=25.66µs
     http_req_sending...............: avg=7.37µs   min=3.64µs   med=6.74µs   max=4.99ms   p(90)=7.97µs   p(95)=8.58µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=282.2µs  min=78.17µs  med=262µs    max=23.23ms  p(90)=379.81µs p(95)=422.27µs
     http_reqs......................: 845817 28193.583431/s
     iteration_duration.............: avg=346.69µs min=127.51µs med=324.57µs max=23.61ms  p(90)=445.61µs p(95)=491.33µs
     iterations.....................: 845817 28193.583431/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10
```


# TL;DR;

k6 requests for 30"

# Quarkus native

## Minimal Image

Imagesize: 78 MB
CPU: max 310%
Mem: 25 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 749 MB 25 MB/s
     data_sent......................: 52 MB  1.7 MB/s
     http_req_blocked...............: avg=1.84µs   min=820ns    med=1.69µs   max=664.01µs p(90)=2.07µs   p(95)=2.28µs
     http_req_connecting............: avg=3ns      min=0s       med=0s       max=269.19µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=487.1µs  min=185.02µs med=425.3µs  max=52.55ms  p(90)=632.31µs p(95)=768.02µs
       { expected_response:true }...: avg=487.1µs  min=185.02µs med=425.3µs  max=52.55ms  p(90)=632.31µs p(95)=768.02µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 561190
     http_req_receiving.............: avg=21.22µs  min=9.24µs   med=19.36µs  max=13.32ms  p(90)=24.77µs  p(95)=27.69µs
     http_req_sending...............: avg=7.78µs   min=3.69µs   med=7.18µs   max=3.03ms   p(90)=8.48µs   p(95)=9.19µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=458.09µs min=153.37µs med=397.34µs max=52.48ms  p(90)=601.88µs p(95)=733.82µs
     http_reqs......................: 561190 18706.158666/s
     iteration_duration.............: avg=526.12µs min=221.97µs med=463.51µs max=53.04ms  p(90)=672.85µs p(95)=810.58µs
     iterations.....................: 561190 18706.158666/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10

running (0m30.0s), 00/10 VUs, 561190 complete and 0 interrupted iterations
```

## Debian Image

Imagesize: 124 MB
CPU: max 300%
Mem: 27 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 740 MB 25 MB/s
     data_sent......................: 52 MB  1.7 MB/s
     http_req_blocked...............: avg=1.83µs   min=828ns    med=1.68µs   max=3.39ms   p(90)=2.06µs   p(95)=2.28µs
     http_req_connecting............: avg=3ns      min=0s       med=0s       max=323.36µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=493.28µs min=190.84µs med=428.56µs max=16.45ms  p(90)=641.49µs p(95)=788.42µs
       { expected_response:true }...: avg=493.28µs min=190.84µs med=428.56µs max=16.45ms  p(90)=641.49µs p(95)=788.42µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 554686
     http_req_receiving.............: avg=21.15µs  min=9.21µs   med=19.39µs  max=3.7ms    p(90)=24.89µs  p(95)=27.85µs
     http_req_sending...............: avg=7.81µs   min=3.63µs   med=7.17µs   max=4.45ms   p(90)=8.49µs   p(95)=9.23µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=464.31µs min=167.52µs med=400.51µs max=16.42ms  p(90)=611.25µs p(95)=754.61µs
     http_reqs......................: 554686 18489.170523/s
     iteration_duration.............: avg=532.37µs min=219.37µs med=466.78µs max=16.48ms  p(90)=682.32µs p(95)=831.46µs
     iterations.....................: 554686 18489.170523/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10


running (0m30.0s), 00/10 VUs, 554686 complete and 0 interrupted iterations
```

# Rust

## Alpine Image

Imagesize: 19.2 MB
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
```

## Debian Image

Imagesize: 82.4 MB
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


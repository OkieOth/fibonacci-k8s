# TL;DR;

k6 requests for 30", 1 Replica

| Language       | Image      | Mem      | CPU   | Iterations |
| -------------- | ---------- | -------- | ----- | ---------- |
| Rust           | Alpine     | 2 Mi | 3183m | 610504     |
|                | Debian     | 2 Mi | 1996m | 1104518     |

More replicas didn't make sense, because the cores of my normal i7 notebook
were on their limits

# Rust

## Debian - 1 Replica

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 1.4 GB  47 MB/s
     data_sent......................: 104 MB  3.5 MB/s
     http_req_blocked...............: avg=1.72µs   min=807ns   med=1.54µs   max=1.96ms   p(90)=1.92µs   p(95)=2.12µs
     http_req_connecting............: avg=2ns      min=0s      med=0s       max=421.44µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=226.13µs min=67.69µs med=200.66µs max=16.96ms  p(90)=333.99µs p(95)=387.97µs
       { expected_response:true }...: avg=226.13µs min=67.69µs med=200.66µs max=16.96ms  p(90)=333.99µs p(95)=387.97µs
     http_req_failed................: 0.00%   ✓ 0           ✗ 1104518
     http_req_receiving.............: avg=21.16µs  min=7.74µs  med=17.87µs  max=8.28ms   p(90)=22.13µs  p(95)=25.85µs
     http_req_sending...............: avg=7.42µs   min=3.44µs  med=6.63µs   max=3.46ms   p(90)=7.86µs   p(95)=8.58µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=197.53µs min=50.77µs med=173.4µs  max=16.92ms  p(90)=303.62µs p(95)=354.52µs
     http_reqs......................: 1104518 36816.98284/s
     iteration_duration.............: avg=263.53µs min=93.65µs med=236.66µs max=17.02ms  p(90)=373.36µs p(95)=430.37µs
     iterations.....................: 1104518 36816.98284/s
     vus............................: 10      min=10        max=10
     vus_max........................: 10      min=10        max=10


running (0m30.0s), 00/10 VUs, 1104518 complete and 0 interrupted iterations
```

## Alpine - 1 replica

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 771 MB 26 MB/s
     data_sent......................: 57 MB  1.9 MB/s
     http_req_blocked...............: avg=1.81µs   min=862ns    med=1.66µs   max=686.24µs p(90)=2.12µs   p(95)=2.35µs
     http_req_connecting............: avg=4ns      min=0s       med=0s       max=366.42µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=444.01µs min=91.85µs  med=399.65µs max=20.89ms  p(90)=698.02µs p(95)=815.51µs
       { expected_response:true }...: avg=444.01µs min=91.85µs  med=399.65µs max=20.89ms  p(90)=698.02µs p(95)=815.51µs
     http_req_failed................: 0.00%  ✓ 0            ✗ 610504
     http_req_receiving.............: avg=21.59µs  min=9.45µs   med=19.42µs  max=12.6ms   p(90)=25.65µs  p(95)=28.72µs
     http_req_sending...............: avg=7.67µs   min=3.58µs   med=7.05µs   max=9.88ms   p(90)=8.64µs   p(95)=9.48µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=414.74µs min=70.36µs  med=371.05µs max=20.76ms  p(90)=667.46µs p(95)=782.95µs
     http_reqs......................: 610504 20349.835302/s
     iteration_duration.............: avg=483.03µs min=124.87µs med=438.11µs max=20.92ms  p(90)=737.93µs p(95)=857.18µs
     iterations.....................: 610504 20349.835302/s
     vus............................: 10     min=10         max=10
     vus_max........................: 10     min=10         max=10


running (0m30.0s), 00/10 VUs, 610504 complete and 0 interrupted iterations
```
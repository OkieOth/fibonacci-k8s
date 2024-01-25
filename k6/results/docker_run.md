# TL;DR;

k6 requests for 30"

# Dotnet

## mcr.microsoft.com/dotnet/aspnet:8.0

Imagesize: 225 MB
CPU: max 210%
Mem: 92 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 908 MB 30 MB/s
     data_sent......................: 65 MB  2.2 MB/s
     http_req_blocked...............: avg=1.86µs   min=654ns    med=1.77µs   max=966.81µs p(90)=2.34µs   p(95)=2.49µs
     http_req_connecting............: avg=1ns      min=0s       med=0s       max=203.05µs p(90)=0s       p(95)=0s
     http_req_duration..............: avg=383.79µs min=83.1µs   med=354.54µs max=31.21ms  p(90)=557.56µs p(95)=628.82µs
       { expected_response:true }...: avg=383.79µs min=83.1µs   med=354.54µs max=31.21ms  p(90)=557.56µs p(95)=628.82µs
     http_req_failed................: 0.00%  ✓ 0           ✗ 694299
     http_req_receiving.............: avg=24.42µs  min=6.62µs   med=22.74µs  max=7.63ms   p(90)=30.08µs  p(95)=33.5µs
     http_req_sending...............: avg=7.99µs   min=2.85µs   med=7.68µs   max=4.64ms   p(90)=9.9µs    p(95)=10.5µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=351.37µs min=64.48µs  med=321.85µs max=31.14ms  p(90)=519.47µs p(95)=588.94µs
     http_reqs......................: 694299 23141.97822/s
     iteration_duration.............: avg=423.47µs min=109.49µs med=395.35µs max=31.76ms  p(90)=604.71µs p(95)=677.5µs
     iterations.....................: 694299 23141.97822/s
     vus............................: 10     min=10        max=10
     vus_max........................: 10     min=10        max=10


running (0m30.0s), 00/10 VUs, 694299 complete and 0 interrupted iterations
```

# Node

## Alpine Image

Imagesize: MB
CPU: max 110%
Mem: 147 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 244 MB 8.1 MB/s
     data_sent......................: 16 MB  537 kB/s
     http_req_blocked...............: avg=1.18µs  min=650ns    med=893ns   max=2.6ms    p(90)=1.49µs p(95)=1.82µs
     http_req_connecting............: avg=129ns   min=0s       med=0s      max=2.4ms    p(90)=0s     p(95)=0s
     http_req_duration..............: avg=1.7ms   min=204.4µs  med=1.48ms  max=23.23ms  p(90)=2.75ms p(95)=3.07ms
       { expected_response:true }...: avg=1.7ms   min=204.4µs  med=1.48ms  max=23.23ms  p(90)=2.75ms p(95)=3.07ms
     http_req_failed................: 0.00%  ✓ 0           ✗ 173073
     http_req_receiving.............: avg=17.18µs min=8.37µs   med=15.56µs max=3.37ms   p(90)=22.8µs p(95)=26.49µs
     http_req_sending...............: avg=4.3µs   min=2.86µs   med=3.8µs   max=295.51µs p(90)=5.57µs p(95)=7.29µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s     p(95)=0s
     http_req_waiting...............: avg=1.68ms  min=172.49µs med=1.46ms  max=22.92ms  p(90)=2.73ms p(95)=3.05ms
     http_reqs......................: 173073 5768.747625/s
     iteration_duration.............: avg=1.72ms  min=242.92µs med=1.5ms   max=25.64ms  p(90)=2.77ms p(95)=3.1ms
     iterations.....................: 173073 5768.747625/s
     vus............................: 10     min=10        max=10
     vus_max........................: 10     min=10        max=10


running (0m30.0s), 00/10 VUs, 173073 complete and 0 interrupted iterations
```

## Debian Image

Imagesize: 211 MB
CPU: max 110%
Mem: 51 MB

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 252 MB 8.4 MB/s
     data_sent......................: 17 MB  554 kB/s
     http_req_blocked...............: avg=1.1µs   min=603ns    med=918ns   max=374.68µs p(90)=1.66µs  p(95)=1.96µs
     http_req_connecting............: avg=6ns     min=0s       med=0s      max=208.83µs p(90)=0s      p(95)=0s
     http_req_duration..............: avg=1.64ms  min=235.15µs med=1.42ms  max=33.94ms  p(90)=2.57ms  p(95)=3.05ms
       { expected_response:true }...: avg=1.64ms  min=235.15µs med=1.42ms  max=33.94ms  p(90)=2.57ms  p(95)=3.05ms
     http_req_failed................: 0.00%  ✓ 0           ✗ 178769
     http_req_receiving.............: avg=17.65µs min=8.06µs   med=15.85µs max=3.24ms   p(90)=24.38µs p(95)=28.87µs
     http_req_sending...............: avg=4.51µs  min=2.72µs   med=3.88µs  max=2.61ms   p(90)=6.63µs  p(95)=7.77µs
     http_req_tls_handshaking.......: avg=0s      min=0s       med=0s      max=0s       p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=1.62ms  min=206.26µs med=1.4ms   max=33.87ms  p(90)=2.55ms  p(95)=3.02ms
     http_reqs......................: 178769 5958.615638/s
     iteration_duration.............: avg=1.67ms  min=268.9µs  med=1.44ms  max=34.37ms  p(90)=2.59ms  p(95)=3.08ms
     iterations.....................: 178769 5958.615638/s
     vus............................: 10     min=10        max=10
     vus_max........................: 10     min=10        max=10


running (0m30.0s), 00/10 VUs, 178769 complete and 0 interrupted iterations
```

# Python

## Alpine Image

Imagesize: 89 MB
CPU: max 110%
Mem: 21 MB

(No connection issues here)

```
  scenarios: (100.00%) 1 scenario, 10 max VUs, 1m0s max duration (incl. graceful stop):
           * default: 10 looping VUs for 30s (gracefulStop: 30s)


     data_received..................: 33 MB  1.1 MB/s
     data_sent......................: 2.3 MB 77 kB/s
     http_req_blocked...............: avg=177.26µs min=67.73µs med=154.73µs max=9.27ms  p(90)=245.96µs p(95)=296.29µs
     http_req_connecting............: avg=117.32µs min=44.21µs med=98.02µs  max=7.62ms  p(90)=160.18µs p(95)=193.77µs
     http_req_duration..............: avg=11.77ms  min=1.65ms  med=10.07ms  max=63.36ms p(90)=17.55ms  p(95)=18.67ms
       { expected_response:true }...: avg=11.77ms  min=1.65ms  med=10.07ms  max=63.36ms p(90)=17.55ms  p(95)=18.67ms
     http_req_failed................: 0.00%  ✓ 0          ✗ 24919
     http_req_receiving.............: avg=303.1µs  min=23.94µs med=135.32µs max=14.36ms p(90)=720.61µs p(95)=1.24ms
     http_req_sending...............: avg=32.76µs  min=9.85µs  med=28.08µs  max=9.11ms  p(90)=45.89µs  p(95)=53.2µs
     http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s      p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=11.44ms  min=1.46ms  med=9.85ms   max=63.28ms p(90)=16.95ms  p(95)=17.89ms
     http_reqs......................: 24919  830.290036/s
     iteration_duration.............: avg=12.02ms  min=2.11ms  med=10.27ms  max=63.66ms p(90)=17.9ms   p(95)=19.03ms
     iterations.....................: 24919  830.290036/s
     vus............................: 10     min=10       max=10
     vus_max........................: 10     min=10       max=10


running (0m30.0s), 00/10 VUs, 24919 complete and 0 interrupted iterations
```

## Debian Image

Imagesize: 167 MB
CPU: max 120%
Mem: 27 MB

**Attention, received connection errors after the half of the time**

```
WARN[0030] Request Failed                                error="Get \"http://localhos
t:5000/fibonacci/100\": read tcp 127.0.0.1:56414->127.0.0.1:5000: read: connection re
set by peer"

     data_received..................: 37 MB  1.2 MB/s
     data_sent......................: 2.8 MB 93 kB/s
     http_req_blocked...............: avg=127.5µs  min=52.6µs   med=128.78µs max=11.58ms p(90)=169.99µs p(95)=181.94µs
     http_req_connecting............: avg=83.6µs   min=35.27µs  med=81.44µs  max=11.29ms p(90)=109.24µs p(95)=118.42µs
     http_req_duration..............: avg=9.78ms   min=863.23µs med=9.54ms   max=67.61ms p(90)=12.19ms  p(95)=24.85ms
       { expected_response:true }...: avg=8.34ms   min=863.23µs med=8.34ms   max=19.8ms  p(90)=11.53ms  p(95)=12.03ms
     http_req_failed................: 6.20%  ✓ 1866        ✗ 28222
     http_req_receiving.............: avg=184.34µs min=0s       med=108.61µs max=3.22ms  p(90)=477µs    p(95)=683.5µs
     http_req_sending...............: avg=23.93µs  min=8.13µs   med=23.26µs  max=11.45ms p(90)=31.55µs  p(95)=35.07µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s      p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=9.57ms   min=722.85µs med=9.34ms   max=67.58ms p(90)=11.85ms  p(95)=24.82ms
     http_reqs......................: 30088  1001.866448/s
     iteration_duration.............: avg=9.96ms   min=1.13ms   med=9.75ms   max=67.9ms  p(90)=12.42ms  p(95)=25.22ms
     iterations.....................: 30088  1001.866448/s
     vus............................: 10     min=10        max=10
     vus_max........................: 10     min=10        max=10


running (0m30.0s), 00/10 VUs, 30088 complete and 0 interrupted iterations
```

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


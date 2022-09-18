# Golang grpc-client-server 

Simple grpc server streaming capability with Golang, this code will have server and client each:
* Server: Will have a function that will stream 5 responses with slight delay each.
* Client: Will send a request to server and wait on all the responses.
---
# Running it
Run with makefile
```
make all
```
This will create the pb file for grpc and also the client and server binary.
---

```
./client
```
Running client binary.
---

```
./server
```
Running server binary.
---


# Response

This will be shown in client
```
2020/11/10 22:26:11 Resp received from Server : Request #0 For Id:1
2020/11/10 22:26:12 Resp received from Server : Request #1 For Id:1
2020/11/10 22:26:13 Resp received from Server : Request #2 For Id:1
2020/11/10 22:26:14 Resp received from Server : Request #3 For Id:1
2020/11/10 22:26:15 Resp received from Server : Request #4 For Id:1
2020/11/10 22:26:15 finished
```
This will be shown in server
```
2020/11/10 22:26:09 start server
2020/11/10 22:26:11 fetch response from Client for id : 1
2020/11/10 22:26:11 finishing request number : 0
2020/11/10 22:26:12 finishing request number : 1
2020/11/10 22:26:13 finishing request number : 2
2020/11/10 22:26:14 finishing request number : 3
2020/11/10 22:26:15 finishing request number : 4
```
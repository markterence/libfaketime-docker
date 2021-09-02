# libfaketime - docker

Compile [libfaketime](https://github.com/wolfcw/libfaketime) in docker.


- Build `libfaketime` on `ubuntu:20.4` image

```shell
docker build --tag libfaketime:latest .
```

- Pull the `libfaketime.so.1` and `libfaketimeMT.so.1` from the container and dump it on the host

```
CID=$(docker create libfaketime:latest)
docker cp ${CID}:/usr/local/lib/faketime/ dist
docker rm ${CID}
```

- Usage: Refer to [libfaketime](https://github.com/wolfcw/libfaketime#readme) usage instructions

```
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/faketime
LD_PRELOAD=/faketime/libfaketime.so.1
```

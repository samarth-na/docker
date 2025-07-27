table of contents

- list of images
- volume setup
- image building
- image running

## list of images

ubuntu linux
alpine linux
postgress db
cassandra db
mongodb db
apache server

## building

- alpine linux

```fish
docker build -t alpine-fsh .
```

ubuntu

```fish
docker build -t ubuntu-fsh .
```

postgress

```fish
docker build -t pg .
```

mongodb
cassandra

## running

- alpine

    interactive

```fish
docker run -it --name alpine-interactive alpine-fsh:latest
```

detached

```fish
docker run -d --name alpine-detached alpine-fsh:latest tail -f /dev/null
```

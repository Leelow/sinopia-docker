> [Sinopia](https://github.com/leelow/sinopia) is a private npm repository server.

This repo uses [leelow/sinopia](https://github.com/leelow/sinopia) and [leelow/sinopia-mongodb](https://github.com/leelow/sinopia-mongodb) for authentication.

### Recommend Usage

- To run default container on port 4873

`docker run --name sinopia -d -p 4873:4873 leelow29/sinopia`

- to sync storage / config.yaml

`mkdir -p /path/to/storage`

`mkdir -p /path/to/config.yaml`

*edit [config.yaml](https://github.com/leelow/sinopia-docker/blob/master/config.yaml)*


`docker run --name sinopia -d -p 4873:4873 -v <local-path-to-storage>:/sinopia/storage -v <local-path-to-config>:/sinopia/config.yaml rnbwd/sinopia`

- The volume will be synced, so you can update the anything linked outside of the container and it will automatically change the files inside the container. Run `docker restart sinopia` if `config.yaml` is updated.

### Building Custom Containers

- From github repository

```
git clone https://github.com/RnbWd/sinopia-docker.git
cd sinopia-docker
docker build -t sinopia .
docker run -d -p 4873:4873 sinopia
```


## Links

* [rnbwd/nginx](https://registry.hub.docker.com/u/rnbwd/nginx/)

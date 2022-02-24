# docker-hsd

Docker build of handshake.org daemon [hsd](https://github.com/handshake-org/hsd).

Image available on [dockerhub](https://hub.docker.com/repository/docker/skynetlabs/docker-hsd).

## Releasing new version on dockerhub

[Dockerhub](https://hub.docker.com/repository/docker/skynetlabs/docker-hsd) is configured to automatically build all tags on push event. To release new version, tag this repository with a tag name that corresponds to the new tag on [hsd](https://github.com/handshake-org/hsd) and push it to the remote.

**Example:** current [docker-hsd](https://hub.docker.com/repository/docker/skynetlabs/docker-hsd) and [hsd](https://github.com/handshake-org/hsd) version tag in git is v3.0.1 which relates to tag 3.0.1 on dockerhub - once [hsd](https://github.com/handshake-org/hsd) releases new version, say v3.0.2, we need to create a tag on this repository also called v3.0.2 and push it to the remote, dockerhub will pick that up and build a new version 3.0.2

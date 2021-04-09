# ROS Gmapping in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros-gmapping)](https://hub.docker.com/r/frankjoshua/ros-gmapping) [![CI](https://github.com/frankjoshua/docker-ros-gmapping/workflows/CI/badge.svg)](https://github.com/frankjoshua/docker-ros-gmapping/actions)

## Description

Runs a gmapper in a Docker container. Probably need --network="host" because ROS uses ephemeral ports.

## Example

```
docker run -it \
    --network="host" \
    --env="ROS_IP=$ROS_IP" \
    --env="ROS_MASTER_URI=$ROS_MASTER_URI" \
    -v "$PWD/app:/app" \
    frankjoshua/ros-gmapping
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros-gmapping -l
```

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)

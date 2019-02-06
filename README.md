# OpenSpades-server docker image
This docker image is based on the [PySnip](https://github.com/NateShoffner/PySnip) server implementation for Ace of Spades.

## Instructions
To start the docker image run:

```
docker run -it \
 --name "OpenSpades-Server" \
 -p 32887:32887 \
zocker160/openspades-server:latest
```
## Usage

- `-p 32887:32887` OS game server port (default 32887)
- *(optional)* `-v <insert/path/here>:/PySnip/feature_server:rw` The location to store all your permanent files (logs, config and more)

#### Additional parameters:

*none yet - but you can create a [issue](https://github.com/zocker-160/OpenSpades-server-docker/issues) on GitHub if you have an idea* or a problem ;)

#### Get into the server terminal

```
docker attach OpenSpades-Server
```

**important:**
in order to detach from the server terminal press: `Ctrl`+`p` and `Ctrl`+`q` (*`Ctrl`+`c` will stop the server)*

#### The public server list can be found [here](https://www.buildandshoot.com/servers/).

## Extra bits
[Docker Hub page](https://hub.docker.com/r/zocker160/openspades-server/)  
[GitHub page](https://github.com/zocker-160/OpenSpades-server-docker)

[PySnip GitHub repo](https://github.com/NateShoffner/PySnip)  
[OpenSpades site](http://openspades.yvt.jp/)

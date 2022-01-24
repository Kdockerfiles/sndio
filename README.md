**[Dockerized](https://github.com/Kdockerfiles/sndio/pkgs/container/sndio) [sndio](https://sndio.org/)**

# Usage

## Devices

For physical sound interface(s) to be usable inside the container, you should expose them with `--device /dev/snd/`.

By default `sndio` will use `rsnd/default` device. This can be modified by supplying `-f` argument(s) as Docker container command.

## Available volumes

`/tmp/sndio`: Contains sndio UNIX socket file.

## Capabilities

The `sndio` daemon might want to adjust its process priority. Therefore it is required that the Docker container has `SYS_NICE` capability.

## Example command

```bash
$ docker run -v sndio_socket:/tmp/sndio/ --cap-add SYS_NICE ghcr.io/kdockerfiles/sndio:1.8.1-4 -f rsnd/1
```

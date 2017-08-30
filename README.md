# fboaventura/dckr-ipd

Docker instance to run [mpolden/ipd](https://github.com/mpolden/ipd) service.

## How to use

This instance is published at [Docker Hub](https://hub.docker.com/r/fboaventura/dckr-ipd/), so it's public available.  All you need to run this instance is:

```bash
$ docker run -d -p 8080:80 fboaventura/dckr-ipd
```

You can, of course, pass some custom values in order to make it more prone to your usage.  The variables, and their defaults are:

## Environment

```dockerfile
ENV DOMAIN "localhost"
ENV BASEDIR "/app"
ENV PORT "8888"
ENV ADDOPTS ""
ENV LOGLEVEL "debug"
```

Keep in mind that this image is built upon [joeshaw/busybox-nonroot](https://hub.docker.com/r/joeshaw/busybox-nonroot/), thus it can only bind to ports above `1024`.

If you are running this Docker instance behind a loadbalancer, or proxy, you may add `--trusted-header=X-Forwarded-For` to `ADDOPTS` variable, so it will get the Forwarded IP address, instead of the one from the loadbalancer/proxy instance.

Once the instance is running, all you have to do is open a web browser and point it to `http://localhost:8080`

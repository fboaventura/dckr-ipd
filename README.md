# fboaventura/dckr-ipd

Docker instance to run [mpolden/ipd](https://github.com/mpolden/ipd) service.

## How to use

This instance is published at [Docker Hub](https://hub.docker.com/r/fboaventura/dckr-ipd/), so it's public available.  All you need to run this instance is:

```bash
$ docker run -d -p 8080:80 fboaventura/dckr-ipd
```

You can, of course, pass some custom values to fiche, in order to make it more prone to your usage.  The variables, and their defaults are:

```dockerfile
ENV PORT "80"
```

Once the instance is running, all you have to do is open a web browser and point it to `http://localhost:8080`


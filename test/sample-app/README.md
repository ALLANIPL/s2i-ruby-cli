Sample app
===============
       
Used to test s2i builder. This example uses thor gem, but it can be really used with anything, only cli file is needed, which will be executed as docker entrypoint.

Build and run
-------

Install [s2i](https://github.com/openshift/source-to-image#installation) via preferred method. Then:

```
s2i build . ghcr.io/allanipl/s2i-ruby-cli:3.0-slim sample-app
docker run --rm sample-app
docker run --rm sample-app hello_world
```

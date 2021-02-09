S2i Ruby Cli Builder
===============================

Simple [S2i](https://github.com/openshift/source-to-image) Ruby builder for Cli apps.

It assumes there is executable cli file in provided ruby dir. Its then executed as docker entrypoint.

In [Allani](https://allani.pl) we are using it to dockerize lots of small gems, mainly for argo workflows, as tasks.



Versions
---------
Currently building ruby versions:
- 2.6-slim
- 2.6-buster
- 2.7-slim
- 2.7-buster
- 3.0-slim
- 3.0-buster
                 
Download
-------------
All images are hosted [here](https://github.com/orgs/ALLANIPL/packages/container/package/s2i-ruby-cli)

Usage
---------
Check example in [sample-app](test/sample-app).


Differences from sclorg/s2i-ruby-container
---------------------
[sclorg/s2i-ruby-container](https://github.com/sclorg/s2i-ruby-container/)

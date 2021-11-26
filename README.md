# tragus/chef-server
tragus/ubuntu with chef-server installed & configured to run in the foreground.

## Building the image
```
git clone https://github.com/jcejohnson/docker-chef-server.git tragus-chef-server
cd tragus-chef-server
docker build -t tragus/chef-server .
```

## Running the container

Need to read https://docs.chef.io/server_firewalls_and_ports.html and update here.

```
docker run -d -p TBD --name chef-server tragus/chef-server
```

## TODO

Everything

## Warning

Probably lots

## References

Kosuke Adachi

- https://registry.hub.docker.com/u/foostan/chef-server-box/
- https://github.com/foostan/chef-server-box

Travis Cline

- https://github.com/tmc/dockerfiles


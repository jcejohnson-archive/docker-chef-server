FROM tragus/ubuntu

MAINTAINER James Johnson

#   wget -q https://web-dl.packagecloud.io/chef/stable/packages/ubuntu/trusty/chef-server-core_12.0.4-1_amd64.deb && \

COPY chef-server-core_12.0.4-1_amd64.deb /tmp/
COPY run_chef_server /tmp/

RUN apt-get update && \
    apt-get -y install curl wget && \
    echo "Downloading chef packge." && \
    dpkg -i /tmp/chef-server-core_12.0.4-1_amd64.deb && \
    dpkg-divert --local --rename --add /sbin/initctl && \
    ln -sf /bin/true /sbin/initctl

# Need to read https://docs.chef.io/server_firewalls_and_ports.html and update here.
# EXPOSE 1234

# TBD
ENTRYPOINT /bin/bash

FROM quay.io/herbyme/docker-elasticsearch:6.6.0

MAINTAINER yeung.herbert@gmail.com

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false

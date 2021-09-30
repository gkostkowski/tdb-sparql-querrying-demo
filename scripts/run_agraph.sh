#!/bin/bash

docker network inspect lod-network >/dev/null 2>&1 || \
	docker network create lod-network

docker run \
	--rm \
	-e AGRAPH_SUPER_USER=admin \
	-e AGRAPH_SUPER_PASSWORD=lodtest \
	-p 10000-10035:10000-10035 \
	--shm-size 1g \
	--name agraph_lod \
	--network lod-network \
	franzinc/agraph

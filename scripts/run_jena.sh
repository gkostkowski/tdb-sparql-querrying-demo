#!/bin/bash

docker network inspect lod-network >/dev/null 2>&1 || \
	docker network create lod-network

docker run --rm \
	-p 3030:3030 \
	-e ADMIN_PASSWORD=lodtest \
	--name jena_fuseki_lod \
	--network lod-network \
	jena-fuseki

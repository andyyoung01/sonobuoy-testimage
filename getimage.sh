#! /bin/bash

set -e

docker login  --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD

for i in `cat imagelist.txt`
do
	docker pull $i
	docker tag $i kubetesting/${i##*/}
	docker push kubetesting/${i##*/}
done

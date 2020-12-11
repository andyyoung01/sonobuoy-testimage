#! /bin/bash

set -e

docker login  --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD  registry.cn-shenzhen.aliyuncs.com

for i in `cat imagelist.txt`
do
	docker pull $i
	docker tag $i registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
	docker push registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
done

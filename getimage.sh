#! /bin/bash

set -e

docker login  --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD  registry.cn-shenzhen.aliyuncs.com

for i in `sed -n "1,10p" imagelist.txt`
do
	docker pull $i
	docker tag $i registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
	docker push registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
done

echo "=============1-10 done==============="

for i in `sed -n "11,20p" imagelist.txt`
do
	docker pull $i
	docker tag $i registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
	docker push registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
done

echo "=============11-20 done==============="

for i in `sed -n "21,30p" imagelist.txt`
do
	docker pull $i
	docker tag $i registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
	docker push registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
done

echo "=============21-30 done==============="

for i in `sed -n "31,41p" imagelist.txt`
do
	docker pull $i
	docker tag $i registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
	docker push registry.cn-shenzhen.aliyuncs.com/andyyoung01/${i##*/}
done

echo "done"
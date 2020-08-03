# ContainerAsService
Golden Container Images

Run the Command ::::
packer build -var BASE_IMAGE=centos -var OS_PACKAGES=git -var LANGUAGE=java golden-centos.json

docker-compose exec api anchore-cli image add docker.io/jagadesh1982/packer-ansible-example:latest
docker-compose exec -T api anchore-cli evaluate check docker.io/jagadesh1982/packer-ansible-example:latest

docker run -it bfcd978df17e -c "/bin/bash"

[root@ip-172-31-19-104 ContainerAsService]# docker-compose exec api anchore-cli image add docker.io/
Image Digest: sha256:27b7e9a3da12d9537c585f8bdcf0484ec4943560836921573a67a628c9a610eb
Parent Digest: sha256:27b7e9a3da12d9537c585f8bdcf0484ec4943560836921573a67a628c9a610eb
Analysis Status: not_analyzed
Image Type: docker
Analyzed At: None
Image ID: bfcd978df17e0f48d9465a7726d057bbc73200a6b69f3fffd5811162c7de9b73
Dockerfile Mode: None
Distro: None
Distro Version: None
Size: None
Architecture: None
Layer Count: None

Full Tag: docker.io/jagadesh1982/packer-ansible-example:latest
Tag Detected At: 2020-08-03T06:15:08Z



[root@ip-172-31-19-104 ContainerAsService]# docker-compose exec -T api anchore-cli evaluate check docker.io/jagadesh1982/packer-ansible:latest | sed -n '3 p' | cut -d ":" -f2
 fail

[root@ip-172-31-19-104 ContainerAsService]# docker-compose exec -T api anchore-cli evaluate check docker.io/jagadesh1982/packer-ansible:latest
Image Digest: sha256:aa50cb37c7b231acfbd41a47c09bc50cf4e3d6b802c21664c56b526569adb923
Full Tag: docker.io/jagadesh1982/packer-ansible:latest
Status: fail
Last Eval: 2020-08-03T06:17:38Z
Policy ID: 2c53a13c-1765-11e8-82ef-23527761d060


[root@ip-172-31-19-104 ContainerAsService]# sh fetchImage.sh | jq ".results[0].name"
"x23esjwd"



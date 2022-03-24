sh docker-deploy-hdp30.sh
+ registry=hortonworks
+ name=sandbox-hdp
+ version=3.0.1
+ proxyName=sandbox-proxy
+ proxyVersion=1.0
+ flavor=hdp
+ echo hdp
+ mkdir -p sandbox/proxy/conf.d
+ mkdir -p sandbox/proxy/conf.stream.d
+ docker pull hortonworks/sandbox-hdp:3.0.1
3.0.1: Pulling from hortonworks/sandbox-hdp
70799bbf2226: Pull complete
40963917cdad: Pull complete
3fe9adbb8d7e: Pull complete
ee3ec4e8cb3d: Pull complete
7ea5917732c0: Pull complete
2d951411620c: Pull complete
f4c5e354e7fd: Pull complete
22ffa6ef360f: Pull complete
2060aa0f3751: Pull complete
ca01ba34744d: Pull complete
83326dded077: Pull complete
eb3d71b90b73: Pull complete
bdd1cab41c81: Pull complete
500cc770c4bd: Pull complete
0cb1decd5474: Pull complete
b9591f4b6855: Pull complete
f28e56086127: Pull complete
e7de4e7d0bca: Pull complete
ec77967d2166: Pull complete
4fdcae170114: Pull complete
6347f5df8ffc: Pull complete
6a6ecc232709: Pull complete
ea845898ff50: Pull complete
02135573b1bf: Pull complete
cb0176867cd8: Pull complete
3c08321268fd: Pull complete
82e82a97c465: Pull complete
8aaaa48ed101: Pull complete
74b321ac2ac5: Pull complete
569da02c0a66: Pull complete
af40820407ef: Pull complete
Digest: sha256:7b767af7b42030fb1dd0f672b801199241e6bef1258e3ce57361edb779d95921
Status: Downloaded newer image for hortonworks/sandbox-hdp:3.0.1
docker.io/hortonworks/sandbox-hdp:3.0.1
+ docker pull hortonworks/sandbox-proxy:1.0
1.0: Pulling from hortonworks/sandbox-proxy
951bdea65c93: Pull complete
4b9047c5fbbb: Pull complete
773156407aae: Pull complete
d8524176841d: Pull complete
Digest: sha256:42e4cfbcbb76af07e5d8f47a183a0d4105e65a1e7ef39fe37ab746e8b2523e9e
Status: Downloaded newer image for hortonworks/sandbox-proxy:1.0
docker.io/hortonworks/sandbox-proxy:1.0
+ '[' hdp == hdf ']'
+ '[' hdp == hdp ']'
+ hostname=sandbox-hdp.hortonworks.com
++ docker images
++ grep hortonworks/sandbox-hdp
++ awk '{print $2}'
+ version=3.0.1
+ docker network create cda
cc8ded079692cc10ad9272f059cf7d2eb021ef60001018433b2edf35a996118e
+ docker run --platform linux/amd64 --privileged --name sandbox-hdp -h sandbox-hdp.hortonworks.com --network=cda --network-alias=sandbox-hdp.hortonworks.com -d hortonworks/sandbox-hdp:3.0.1
678df570f7cbbb3be50cb9063c1c6025ae1f9a5bb34c13ce886bcc769aded327
+ echo ' Remove existing postgres run files. Please wait'
 Remove existing postgres run files. Please wait
+ sleep 2
+ docker exec -t sandbox-hdp sh -c 'rm -rf /var/run/postgresql/*; systemctl restart postgresql-9.6.service;'
Failed to get D-Bus connection: No such file or directory
+ sed s/sandbox-hdp-security/sandbox-hdp/g assets/generate-proxy-deploy-script.sh
+ mv -f assets/generate-proxy-deploy-script.sh.new assets/generate-proxy-deploy-script.sh
+ chmod +x assets/generate-proxy-deploy-script.sh
+ assets/generate-proxy-deploy-script.sh
+ uname
+ grep MINGW
+ chmod +x sandbox/proxy/proxy-deploy.sh
+ sandbox/proxy/proxy-deploy.sh
831a63260dae9384420d5bd8e626042df414cd55cd2a212c47157b698cfd39bf
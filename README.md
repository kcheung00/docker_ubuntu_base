# Basic Ubuntu Docker Image
## Minimal ubuntu 20.04 docker image
## Build Steps
1. Clone from git repo
   ```
   git clone https://github.com/kcheung00/docker_ubuntu_base.git
   ```
2. Build the image
   ```
   docker build -t ubuntu_base .
   ```
3. Exeecute the image in interactive mode
   ```
   docker run -it <Image ID> /bin/bash
   ```
4. Verify the image
   - Jave version: OpenJDK 11.0.11
   - Installed: wget, curl, ssh, docker, 
5. Tag the image
   ```
   docker tag <Image ID> kcheung00/ubuntu_base:20.04
   ```
6. Upload to docker hub
   ```
   docker push kcheung00/ubuntu_base:20.04
   ```





#1 download recent stable container image: docker.io/gitlab/gitlab-ce:17.9.1-ce.0

#2 prepare the storage to be mounted as PV in gitlab container
   [on target node -> vvfanny defined in gitlab.yaml]

     # prepare directories for gitlab to mount
     cd /home/vvfanny/data
     mkdir -p PV/gitlab/config
     mkdir -p PV/gitlab/data
     mkdir -p PV/gitlab/logs

     # solve access permission issue with mountPath
     sudo chcon -Rt container_file_t /home/vvfanny/data/PV/gitlab
     sudo chown -R 998:998 /home/vvfanny/data/PV/gitlab/

#3 kubectl apply -f gitlab.yaml

#4 login: http://<node-ip>:30080 -> http://192.168.124.248:30080

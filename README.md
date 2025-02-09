# SiemensRockyLinux
Files/Scripts to create and run a RockyLinux Docker image for Siemens Tools.

This container is to enable the running of Siemens EDA tools within a Docker image

rocky_docker_build.sh : Creates a Docker image named siemens_rocky_linux/latest

rocky_docker_run.sh : Runs a user instance of siemens_rocky_linux.
                      You may want to edit the volume mounts to suit your tool locations

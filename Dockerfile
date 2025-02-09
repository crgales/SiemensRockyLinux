FROM rockylinux:8

# Update all packages
RUN dnf -y update

RUN dnf -y install gcc glibc-headers glibc-devel make gcc-c++ libX11 libXext libXft

# Set the default command to run bash
CMD ["/bin/bash"]

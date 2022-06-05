FROM ubuntu

WORKDIR /~/home/qemu

RUN apt -y update &&\ 
  apt -y install gcc-aarch64-linux-gnu qemu-system-arm gdb-multiarch wget make &&\
  wget -P ~ git.io/.gdbinit

CMD /config/start_script.sh



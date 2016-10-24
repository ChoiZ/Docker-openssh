Docker-sshd
===========

Openssh-server docker container.


Usage
-----

Build the container:

    docker build -t choiz/sshd .

Start the container:

    docker run -d -p 2222:22 -P --name sshd choiz/sshd

Use the container:

    ssh root@localhost -p 2222

Stop the container:

    docker stop sshd

Remove the container:

    docker rm sshd

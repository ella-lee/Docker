FROM tomcat:8.5

RUN apt-get update -y --allow-unauthenticated
RUN apt-get install -y --allow-unauthenticated software-properties-common
RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ xenial main universe"
RUN add-apt-repository "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe"
RUN add-apt-repository "deb http://cz.archive.ubuntu.com/ubuntu bionic main"
RUN apt-get update -y --allow-unauthenticated
RUN apt-get install -y --fix-missing --allow-unauthenticated build-essential
RUN apt-get install -y --fix-missing --allow-unauthenticated cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y --allow-unauthenticated python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev


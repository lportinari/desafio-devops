FROM ubuntu:18.04
RUN apt-get update && apt-get install -y sshpass \ 
openssh-server \
vim \  
python3.7 \
python3-pip \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
WORKDIR /code
RUN pip3 install -r requirements.txt
COPY . /code/

FROM linuxserver/baseimage

MAINTAINER DrEVILish

ENV BASE_APTLIST="build-essential git-core libssl-dev nodejs"

# install packages
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
apt-get install $BASE_APTLIST -qy && \
npm install -g npm@latest && \

# cleanup 
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*


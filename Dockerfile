# Install Operating system and dependencies
FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl zip unzip build-essential psmisc python3 -y

# download Flutter SDK from Flutter Github repo
RUN git clone https://github.com/flutter/flutter.git -b stable /usr/local/flutter

# Set flutter environment path
ENV PATH="/usr/local/flutter/bin:${PATH}"

RUN flutter precache

FROM truffle/ci:latest

ENV VERSION 0.0.5

# Create app directory
WORKDIR /usr/src/app \
        RUN truffle init \
            truffle install hospital-network@$VERSION

# Bundle app source
COPY . .

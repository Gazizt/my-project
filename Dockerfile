FROM ubuntu:22.04
LABEL maintainer="Gaziz"
RUN apt-get update && apt-get install -y curl git nano
WORKDIR /app
COPY . .
CMD ["bash", "-c", "echo 'Hello from my container!' && ls"]

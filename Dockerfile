FROM ubuntu:latest
#from what image we will base our build on


# Build Instructions
# What we want to do to this image to make it our own and fit it for our purposes
ENV NAME="Danny"
RUN apt-get update -y
RUN apt-get install python3 -y
COPY app /app/
WORKDIR /app

#Boot Command. When this image is run, what do you want it to do?
CMD ["/usr/bin/python3", "/app/hello.py"]

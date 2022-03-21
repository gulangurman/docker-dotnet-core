# Docker : run a sample .NET Core console application

An example app that runs a .NET Core program that prints a hello message.

The image will:
1. install alpine linux and .NET 6 sdk into the container.
2. copy the project file into the container.
3. restore the project and publish it inside the container.
4. run the published console program.


You can download the built image from Docker Hub:

    docker pull gulangurman/docker-dotnet-core:latest

# Build

First build the image and tag it with a name.

    $ docker build -t gulangurman/docker-dotnet-core .       

# Check

Check that your image is listed among other docker images on your system.    

    $ docker images
   
# Run

Now run the image you've just built.

    $ docker run -d --name dotnet-core-container gulangurman/docker-dotnet-core   

# View logs

You can see the "Hello world!" message in the container logs.

    $ docker logs dotnet-core-container   
   
# the base image will install dotnet 6 sdk on top of alpine linux
FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine3.15 AS build

# set current working directory
# we'll continue with this path inside the container
WORKDIR /source

# copy the c# file into the container
COPY Hello/*.csproj .  
RUN dotnet restore

COPY Hello/. .
RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "Hello.dll"]
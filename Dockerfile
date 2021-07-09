FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019 AS build
WORKDIR /app

COPY *.sln .

COPY WebApplication4/*.csproj ./WebApplication4/
COPY WebApplication4/*.config ./WebApplication4/
RUN nuget restore

COPY WebApplication4/. ./WebApplication4/
WORKDIR /app/WebApplication4
RUN msbuild /p:Configuration=Release -r:False

FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/WebApplication4/. ./
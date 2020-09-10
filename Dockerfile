ARG dotnet_version
FROM mcr.microsoft.com/dotnet/core/sdk:${dotnet_version}

ARG dotnet_format_version

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install -g dotnet-format --version ${dotnet_format_version}
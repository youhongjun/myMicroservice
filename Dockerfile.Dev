FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY myMicroservice.csproj myMicroservice/
RUN dotnet restore myMicroservice/myMicroservice.csproj
WORKDIR /src/myMicroservice
COPY . .
RUN dotnet build myMicroservice.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish myMicroservice.csproj -c Release -o /app

FROM base AS final
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "myMicroservice.dll"]
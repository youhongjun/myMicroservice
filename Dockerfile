FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /publish
COPY . /publish
EXPOSE 80
ENTRYPOINT ["dotnet", "myMicroservice.dll"]
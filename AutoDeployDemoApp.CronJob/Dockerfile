FROM mcr.microsoft.com/dotnet/runtime:8.0 AS base
WORKDIR /app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["AutoDeployDemoApp.CronJob/AutoDeployDemoApp.CronJob.csproj", "AutoDeployDemoApp.CronJob/"]
RUN dotnet restore "AutoDeployDemoApp.CronJob/AutoDeployDemoApp.CronJob.csproj"
COPY . .
WORKDIR "/src/AutoDeployDemoApp.CronJob"
RUN dotnet publish "AutoDeployDemoApp.CronJob.csproj" -c Release -o /app/publish
FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "AutoDeployDemoApp.CronJob.dll"]
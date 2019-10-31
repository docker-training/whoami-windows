FROM mcr.microsoft.com/dotnet/core/sdk:2.1
ENV ASPNETCORE_URLS http://+:5000
WORKDIR /app
COPY app.csproj ./
RUN dotnet restore
COPY . .
CMD dotnet run

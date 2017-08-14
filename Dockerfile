FROM microsoft/aspnetcore-build:2.0.0-nanoserver
ENV ASPNETCORE_URLS http://+:5000
RUN mkdir /app
WORKDIR /app
COPY app.csproj ./
RUN dotnet restore
COPY . .
CMD dotnet run

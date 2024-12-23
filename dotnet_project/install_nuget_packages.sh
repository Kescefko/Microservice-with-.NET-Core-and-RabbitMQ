#!/bin/bash

# This script adds necessary dependencies to all .NET services in the 'Services' directory.

# Iterate through all .csproj files within the 'Services' directory
for project in ./Services/*/*.csproj; do
  echo "Adding dependencies to $project..."

  dotnet add "$project" package AutoMapper.Extensions.Microsoft.DependencyInjection
  dotnet add "$project" package MassTransit.RabbitMQ
  dotnet add "$project" package Microsoft.EntityFrameworkCore
  dotnet add "$project" package Microsoft.EntityFrameworkCore.Design
  dotnet add "$project" package Microsoft.EntityFrameworkCore.SqlServer
  dotnet add "$project" package Microsoft.Extensions.Http.Polly
  dotnet add "$project" package MongoDB.Entities
  
  echo "Dependencies added to $project."
done

echo "All dependencies have been added to the projects."

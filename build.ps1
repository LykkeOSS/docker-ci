$versions = @(1, 2, 3);

$versions | ForEach-Object {
    docker build dotnet-core-lts-sdks/$_ -t lykkeoss/dotnet-core-lts-sdks:$_
    docker push lykkeoss/dotnet-core-lts-sdks:$_

    docker build dotnet-core-node/$_ -t lykkeoss/dotnet-core-node:$_
    docker push lykkeoss/dotnet-core-node:$_
}
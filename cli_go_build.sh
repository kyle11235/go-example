BUILD_NAME=cli-go-build
BUILD_NUMBER=1
VERSION=v0.0.1

# download dep
go mod tidy

# build
jfrog rt go build --build-name=$BUILD_NAME --build-number=$BUILD_NUMBER

# go-publish
jfrog rt gp go-virtual $VERSION --server-id art1 --build-name=$BUILD_NAME --build-number=$BUILD_NUMBER

# publish build info
jfrog rt bp $BUILD_NAME $BUILD_NUMBER

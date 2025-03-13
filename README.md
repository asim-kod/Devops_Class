# apponex_repo_1
apponex_repo_1

---------------
docker multi stage commands:


docker build . -t multi-stage-example:v1 - Build image
docker build . -t multi-stage-example:v1 --target=builder - Build image using a specific stage
docker run multi-stage-example:v1 -p 8080:8080 - Run image

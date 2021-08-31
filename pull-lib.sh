# CID=$(docker create $CI_REGISTRY_IMAGE/auto:latest)
# docker cp ${CID}:/usr/share/nginx/html app-dist
# docker rm ${CID}
CID=$(docker create markterence/faketime:latest)
docker cp ${CID}:/usr/local/lib/faketime/ dist
docker rm ${CID}

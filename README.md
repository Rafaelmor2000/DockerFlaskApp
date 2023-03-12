# DockerFlaskApp
Para operar el contenedor, es necesario ejecutar los dos siguientes comandos en consola:

docker image build -t flask_docker .
docker run -p 5000:5000 -d flask_docker

Para acceder la aplicación, ir a la siguiente dirección en el navegador:

localhost:5000
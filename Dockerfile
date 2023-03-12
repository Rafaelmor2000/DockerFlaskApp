#¿Que imagen debo utilizar como base para una aplicacion de flask?
FROM python:3.8

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

#¿Como ejecuto una instruccion/comando dentro de Docker, por ejemplo: pip install -r requirements.txt?
RUN pip install -r requirements.txt

COPY . /app/

#¿Cual sera el CMD para ejecutar la aplicacion de Flask?
CMD ["python", "FlaskApp.py"]

#¿Como se hace un mapeo de puertos entre un contenedor de Docker y mi maquina local?
#se tienen que definir los puertos a usar en la máquina local y en el contenedor a la hora de correrlo

#¿Como ejecuto mi contenedor de manera "detach" mapeando los puertos del punto de arriba? 
#se corre el comando docker run -p 5000:5000 -d flask_docker en consola






FROM simppru/arm32-build-image:latest 
FROM arm32v7/python:3.7-slim-buster
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY . .
COPY test.py ./
RUN python -m pip install --upgrade pip 
RUN apt-get update &&  apt-get install -y build-essential && apt-get -y install cmake && apt-get -y install make && apt-get install flex bison && apt-get install gcc-pru gnuprumcu
CMD [ "python3", "./test.py" ]

FROM arm32v7/python:3.7-slim-buster
RUN apt-get update && apt-get -y install make && apt-get -y install cmake protobuf-compiler

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

WORKDIR /usr/src/app
COPY test.py ./

RUN python -m pip install --upgrade pip --upgrade pipenv wheel
CMD [ "python", "./test.py" ]

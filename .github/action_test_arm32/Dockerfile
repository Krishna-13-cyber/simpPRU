FROM arm32v7/python:3.7-slim-buster

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

WORKDIR /usr/src/app
COPY test.py ./

RUN python -m pip install --upgrade pip --upgrade pipenv wheel
CMD [ "python", "./test.py" ]

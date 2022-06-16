FROM simppru/arm32-build-image:latest

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


FROM arm32v7/python:3.7-slim-buster
WORKDIR /usr/src/app
COPY test.py ./

RUN python -m pip install --upgrade pip --upgrade pipenv wheel
CMD [ "python", "./test.py" ]

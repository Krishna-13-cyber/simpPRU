FROM simppru/arm32-build-image:latest
FROM arm32v7/python:3.7-slim-buster
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY test.py ./
RUN python -m pip install --upgrade pip 
RUN apt-get update && apt-get -y install cmake && apt-get -y install make
CMD [ "python3", "./test.py" ]

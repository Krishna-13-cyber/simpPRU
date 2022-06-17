FROM simppru/arm32-build-image:latest
FROM arm32v7/python:3.7-slim-buster
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY test.py ./
RUN python -m pip install --upgrade pip --upgrade pipenv wheel
CMD [ "python", "./test.py" ]

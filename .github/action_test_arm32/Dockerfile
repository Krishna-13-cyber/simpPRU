FROM simppru/arm32-build-image:latest

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


FROM arm32v7/python:3

WORKDIR /usr/src/app
COPY requirements.txt ./
COPY test.py ./

RUN python -m pip install --upgrade pip --upgrade pipenv wheel
RUN pip install numpy
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./test.py" ]

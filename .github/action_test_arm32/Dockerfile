FROM arm32v7/python:3.7-slim-buster
COPY . .
COPY test.py ./
RUN python -m pip install --upgrade pip 
CMD [ "python3", "./test.py" ]

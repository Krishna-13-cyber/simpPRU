FROM arm32v7/python:2

COPY requirements.txt ./requirements.txt

RUN python -m pip install --upgrade pip --upgrade pipenv wheel
RUN pip install numpy
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./test.py" ]
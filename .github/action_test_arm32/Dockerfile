FROM arm32v7/python:3.7-slim-buster
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY . .
COPY test.py ./
RUN apt-get -y update && apt-get -y install make &&  sudo apt-get -y install cmake && sudo apt-get -y install flex && sudo apt-get -y install bison && sudo apt-get -y install flex  && sudo apt-get -y install gcc-pru gnuprumcu
RUN python -m pip install --upgrade pip 
CMD [ "python3", "./test.py" ]
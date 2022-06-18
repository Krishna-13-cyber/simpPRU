FROM simppru/arm32-build-image:latest
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY . .
COPY test.py ./
RUN apt-get -y update && apt-get -y install python3 && apt-get -y install make && apt-get -y install cmake && apt-get -y install flex &&  apt-get -y install bison && apt-get -y install flex  &&  apt-get -y install gcc-pru gnuprumcu
RUN python -m pip install --upgrade pip 
CMD [ "python3", "./test.py" ]
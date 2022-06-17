FROM simppru/arm32-build-image:latest as build
WORKDIR /build
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM arm32v7/python:3.7-slim-buster
COPY . .
COPY test.py ./

RUN python -m pip install --upgrade pip 
COPY --from=build /build ./
CMD [ "python3", "./test.py" ]

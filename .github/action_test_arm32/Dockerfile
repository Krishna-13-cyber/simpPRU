FROM simppru/arm32-build-image:latest as build
WORKDIR /build

FROM arm32v7/python:3.7-slim-buster
COPY --from=build /build ./
RUN true
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY . .
COPY test.py ./
RUN python -m pip install --upgrade pip
CMD [ "python3", "./test.py" ]

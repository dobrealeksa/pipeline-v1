FROM python:3.10-alpine3.23
WORKDIR /app
COPY index.html .
CMD [ "python3", "-m", "http.server"]
